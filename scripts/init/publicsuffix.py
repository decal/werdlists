#! /usr/bin/env python
#
# convert publicsuffix.org -> JSON
#

from __future__ import print_function
import argparse
import json
import os
import re
import sys
import urllib


LIST_URL = ('http://mxr.mozilla.org/'
            'mozilla-central/source/netwerk/dns/effective_tld_names.dat'
            '?raw=1')
ascii_re = re.compile('^[a-z]*$', re.I)

def main():
    # parse argv
    parser = argparse.ArgumentParser()
    parser.add_argument('--js',
                        action='store_const',
                        const='publicsuffix',
                        help='output as JavaScript (var publicsuffix)',
                        dest='var')
    parser.add_argument('--var',
                        help='output as JavaScript (var %(metavar)s)',
                        metavar='NAME')
    args = parser.parse_args()

    data = download_list(LIST_URL)
    psl = parse_list(data)
    psl = build_list(psl)
    s = json.dumps(psl, indent=4, sort_keys=True)
    if args.var:
        print('var ', args.var, ' = ', s, ';', sep='')
    else:
        print(s)

def download_list(url):
    resp = urllib.urlopen(url)
    return resp.read().decode('utf-8')

def parse_list(data):
    is_ascii = ascii_re.match
    to_punycode = lambda s: 'xn--' + s.encode('punycode')
    join = '.'.join

    # parse public suffix list
    psl = {}
    for l in data.splitlines():
        l = l.strip()
        if (not l or
           l.startswith('//')):
           continue
        suffix = l.split('.')
        try:
            suffix = [s.encode('ascii') for s in suffix]
        except UnicodeEncodeError:
            suffix = [s if is_ascii(s) else to_punycode(s) for s in suffix]
        tld = suffix[-1]
        if tld not in psl:
            psl[tld] = {}
        if (suffix[0] == '*' or
            suffix[0].startswith('!')):
            # conditional suffix
            psl[tld].setdefault(join(suffix[1:]), []).append(suffix[0])
        else:
            # staic suffix
            psl[tld][join(suffix)] = False
    return psl

def build_list(psl):
    def new_rule(suffix, pattern):
        return dict(suffix=suffix,
                    pattern=r'^(?:(.+)\.)?([^.]+)\.({})$'.format(pattern),
                    level=suffix.count('.') + 2)

    # build regexp patterns
    new_psl = {}
    for tld in psl:
        new_psl[tld] = rules = []
        for suffix, cond in psl[tld].iteritems():
            ptn = suffix.replace('.', r'\.')
            if not cond:
                # static suffix
                rules.append(new_rule(suffix, ptn))
            else:
                # conditional suffix
                for c in cond:
                    if c == '*':
                        rules.append(new_rule(suffix, r'[^.]+\.' + ptn))
                    elif c.startswith('!'):
                        rules.append(new_rule(c[1:] + '.' + suffix, ptn))
        rules.sort(key=lambda o: (-o['level'], o['suffix']))
    return new_psl


if __name__ == '__main__':
    main()
