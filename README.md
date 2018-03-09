[![Twitter: @decalresponds](https://img.shields.io/badge/contact-@decalresponds-blue.svg)](https://twitter.com/decalresponds "@decalresponds")
[![Ask Me Anything!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/decal/werdlists/issues/new "Ask Me Anything!")
[![werdlists](https://img.shields.io/badge/werd-lists-lightgrey.svg)](https://github.com/decal/werdlists "werdlists")
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0 "Apache License 2.0")
[![repo-size](https://img.shields.io/github/repo-size/decal/werdlists.svg)](https://github.com/decal/werdlists "repo-size")
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/ "Made with Bash")

* * *
```
                                           _____      __
                   _      _____  _________/ / (_)____/ /______
                  | | /| / / _ \/ ___/ __  / / / ___/ __/ ___/
                  | |/ |/ /  __/ /  / /_/ / / (__  ) /_(__  )
                  |__/|__/\___/_/   \__,_/_/_/____/\__/____/
```
* * *

# Brief Introduction to `werdlists` `:book:`

This project is a collection of word lists--they are mostly whitespace-delimited
or line-based.  Although the `passes-dicts` folder contains inputs for [password cracking](https://en.wikipedia.org/wiki/Password_cracking),
overall the files amassed here are intended to be useful in helping to
create insecure software states (with the help of a black-box fuzzer or scanning
utility, for example.)  The vast majority of files are simply [ASCII](https://en.wikipedia.org/wiki/ASCII) with the UNIX
style [newline](https://en.wikipedia.org/wiki/Newline).   

## Descriptions of selected folders sampled from `INDEX.md`

| Folder Name | Description of Contents |
|------------:|:------------------------|
`:page_with_curl:` | [dns-hostnames](tree/master/dns-hostnames) | The host name part of an FQDN ([_Fully Qualified Domain Name_](https://en.wikipedia.org/wiki/Fully_qualified_domain_name "Fully qualified domain name")) |  
`:closed_lock_with_key:` | [http-security](tree/master/http-security) | HTTP ([_Hyper Text Transfer Protocol_](https://www.w3.org/Protocols/ "Hyper Text Transfer Protocol") security info, i.e. CSP ([_Content Security Policy_](https://content-security-policy.com/ "Content Security Policy Quick Reference Guide")) |  
`:computer:` | [unix-data](tree/master/unix-data) | Data associated with various flavors of the [UNIX](http://www.unix.org/what_is_unix.html "What is UNIX?") operating system and its clones |   
`:telephone:` | [telco-data](tree/master/telco-data) | PSTN ([_Public Switched Telephone Network_](http://www.linfo.org/pstn.html "PSTN Definition")) a.k.a. POTS ([_Plain Old Telephone Service_](https://en.wikipedia.org/wiki/Plain_old_telephone_service "Plain old Telephone Service")) [dialing codes](http://www.dialingcode.com/ "Dialing Codes and Country Codes") and related information |  
`:surfer:` | [webapp-paths](tree/master/webapp-paths) | [Path](https://en.wikipedia.org/wiki/Path_(computing)) names related to web-based applications |  

## Inspiration Taken from Similar Projects

If you're already familiar with established repositories such as 
[fuzzdb](https://github.com/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[SecLists](https://github.com/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
and input data resource--just with its own unique style and organization, 
original hand-crafted contents, verification/management scripts, expanded concepts, etc.
`SecLists` is maintained by my colleague and co-worker at [IOActive](https://ioactive.com "IOActive"), [Daniel Miessler](https://danielmiessler.com "Daniel Miessler").

## Description of the Repository Directory Hierarchy

The `scripts` folder consists of shell scripts used for repository maintenance.
All scripts use bash syntax and some data files were generated with a script.
Folder names are outlined in the `INDEX.md` file in the repository's root 
directory.  All files in each folder are detailed in the local `README.md` file,
but these lowercased index files describe the contents of each data file, as
opposed to directory contents. Each folder has a **subject** name and storage
**type** which are separated by a dash.

### Naming Scheme, Syntax and Meaning Associated With File Extensions

Most files have the `*.txt` extension signifying the `text/plain` [MIME type](https://en.wikipedia.org/wiki/Media_type)
Other file extensions in use are: `*.csv`, `*.xml`, `*.html`, and `*.yml`
These are for [Comma-Separated Values](https://en.wikipedia.org/wiki/Comma-separated_values) (`text/csv`), 
[Extended Markup Language](https://en.wikipedia.org/wiki/XML) (`application/xml`),
[Hyper Text Markup Language](https://en.wikipedia.org/wiki/HTML) (`application/html`), etc.
Any file that is larger than 1MB uncompressed should be compressed with [xz](https://en.wikipedia.org/wiki/Xz)
according to the commands in the `scripts/compress-large-files` bash script. In
spite of the fact that this is a word lists project, I'm striving to restrict the
size of each file to a healthy maximum for manageability purposes.
The index file in the root folder (`INDEX.md`), as well as the indices in each 
data directory (`README.md`) are formatted with [GitHub Flavored Markdown](https://github.github.com/gfm/ "GitHub Flavored Markdown Spec").  

* * *
