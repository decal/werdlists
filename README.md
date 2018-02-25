[![Twitter: @decalresponds](https://img.shields.io/badge/contact-@decalresponds-blue.svg)](https://twitter.com/decalresponds "@decalresponds")
[![Ask Me Anything!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/decal/werdlists/issues/new "Ask Me Anything!")
[![werdlists](https://img.shields.io/badge/werd-lists-lightgrey.svg)](https://github.com/decal/werdlists "werdlists")
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0 "Apache License 2.0")
[![repo-size](https://img.shields.io/github/repo-size/decal/werdlists.svg)](https://github.com/decal/werdlists "repo-size")
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/ "Made with Bash")
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://opensource.org)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome "Awesome")

* * *
```
                                           _____      __
                   _      _____  _________/ / (_)____/ /______
                  | | /| / / _ \/ ___/ __  / / / ___/ __/ ___/
                  | |/ |/ /  __/ /  / /_/ / / (__  ) /_(__  )
                  |__/|__/\___/_/   \__,_/_/_/____/\__/____/
```
* * *

# Brief Introduction to `werdlists`

This project is a collection of word lists--they are mostly whitespace-delimited
or line-based.  Although the `passes-dicts` folder contains inputs for password
crackers, overall the files amassed here are intended to be useful in helping to
create insecure software states (with the help of a black-box fuzzer or scanning
utility, for example.)  The vast majority of files are simply ASCII with UNIX 
style line feeds.

## Descriptions of selected folders sampled from `INDEX.md`

- cipher-data: Data denoting or used by cryptographic algorithm implementations
- code-keywords: Identifiers known as reserved words in programming language specs
- dns-hostnames: The host name part of an FQDN (Fully Qualified Domain Name)
- http-security: Hyper Text Transfer Protocol security info, i.e. CSP
- inet-addrs: Numeric Internet addresses a.k.a. IP addresses--mostly version 4
- telco-data: Data associated with telecommunications companies and such..
- webapp-attacks: Proof-of-concept samples for attacks on web applications

## Inspiration Taken from Similar Projects

If you're already familiar with established repositories such as 
[fuzzdb](https://github.com/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[SecLists](https://github.com/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
and input data resource--just with its own unique style and organization, 
original hand-crafted contents, expanded concepts, etc.

## Description of the Repository Directory Hierarchy

The `scripts` folder consists of shell scripts used for file system maintenance.
Folder names are outlined in the `INDEX.md` file at the root of the repository's
directory hierarchy.  All files in each folder are detailed in the local 
`index.md` file, but these lowercased index files describe file names as opposed
to directory contents. Each folder has a **subject** name and data **type**
which are separated by a dash.

### Naming Scheme, Syntax and Meaning Associated With File Extensions

Most files have the *.txt* extension signifying the `text/plain` [MIME type](https://en.wikipedia.org/wiki/Media_type)
Some other file extensions are in use as well, including: *.csv*, *.xml*,
*.bin*, etc.  These are for [Comma-Separated Values](https://en.wikipedia.org/wiki/Comma-separated_values) (`text/csv`), Extended
Markup Language (`application/xml`) and Binary data (`application/octet-stream`),
respectively.  The index file in the root folder (`INDEX.md`), as well as the
indices in each data directory (`index.md`) are formatted with markdown.

* * *
