[![Twitter: @decalresponds](https://img.shields.io/badge/contact-@decalresponds-blue.svg)](https://twitter.com/decalresponds "@decalresponds")
[![Ask Me Anything!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](issues/new "Ask Me Anything!")
[![werdlists](https://img.shields.io/badge/werd-lists-lightgrey.svg)](# "werdlists")
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0 "Apache License 2.0")
[![repo-size](https://img.shields.io/github/repo-size/decal/werdlists.svg)](# "repo-size")
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/ "Made with Bash")

* * *
[![werdlists](logo.png)](# "werdlists")
* * *

# Software Testing Word Lists and Vulnerability Assessment Attack Strings 

## Brief Introduction to `werdlists` :clipboard:

This project is a collection of word lists--they are mostly [whitespace-delimited](https://en.wikipedia.org/wiki/String_literal#Whitespace_delimiters)
or line-based.  Although the [`passes-dicts`](passes-dicts "Password Dictionaries") folder contains inputs for [password cracking](https://en.wikipedia.org/wiki/Password_cracking),
overall the files amassed here are intended to be useful in facilitating
the creation of insecure [program state](https://en.wikipedia.org/wiki/State_(computer_science)#Program_state "Program State") (with the help of a [black-box fuzzer](https://en.wikipedia.org/wiki/Fuzzing#Types_of_fuzzers) or scanning
utility, for example.)  The vast majority of files are simply [ASCII](https://en.wikipedia.org/wiki/ASCII "American Standard Code for Information Interchange") with the [UNIX](http://www.unix.org/what_is_unix.html)
style [newline](https://en.wikipedia.org/wiki/Newline).   

## Descriptions of selected folders sampled from `INDEX.md` :books:

|   Folder Name                      | Description of Contents |
|:----------------------------------:|:------------------------|
|&nbsp;&nbsp;[dns-hostnames](dns-hostnames)&nbsp;&nbsp;| :page_with_curl: The host name part of an FQDN ([_Fully Qualified Domain Name_](https://en.wikipedia.org/wiki/Fully_qualified_domain_name "Fully qualified domain name")) |  
|&nbsp;&nbsp;[http-security](http-security)&nbsp;&nbsp;| :closed_lock_with_key: HTTP ([_Hyper Text Transfer Protocol_](https://www.w3.org/Protocols/ "Hyper Text Transfer Protocol") security info, i.e. CSP ([_Content Security Policy_](https://content-security-policy.com/ "Content Security Policy Quick Reference Guide")) |  
|&nbsp;&nbsp;[unix-data](unix-data)&nbsp;&nbsp;| :computer: Data associated with various flavors of the [UNIX](http://www.unix.org/what_is_unix.html "What is UNIX?") operating system and its clones |   
|&nbsp;&nbsp;[telco-data](telco-data)&nbsp;&nbsp;| :telephone: PSTN ([_Public Switched Telephone Network_](http://www.linfo.org/pstn.html "PSTN Definition")) a.k.a. POTS ([_Plain Old Telephone Service_](https://en.wikipedia.org/wiki/Plain_old_telephone_service "Plain old Telephone Service")) [dialing codes](http://www.dialingcode.com/ "Dialing Codes and Country Codes") and related information |  
|&nbsp;&nbsp;[webapp-paths](webapp-paths)&nbsp;&nbsp;| :surfer: [Path](https://en.wikipedia.org/wiki/Path_(computing)) names related to web-based applications |  

## Inspiration Taken from Similar Projects :thought_balloon:

If you're already familiar with established repositories such as 
[`fuzzdb`](/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[`SecLists`](/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
and [input](https://en.wikipedia.org/wiki/Input_(computer_science)) data resource with its own unique style, organization, 
original hand-crafted contents, verification/management scripts, expanded concepts, etc.
`SecLists` is maintained by my colleague and co-worker at [IOActive](https://ioactive.com "IOActive"), [Daniel Miessler](https://danielmiessler.com "Daniel Miessler").

## Description of the Repository Directory Hierarchy :nut_and_bolt:

The [`scripts`](scripts) folder consists of [shell scripts](https://www.shellscript.sh "Shell Scripting Tutorial") used for repository maintenance.
All scripts use bash syntax and some data files were generated with a script.
Folder names are outlined in the `INDEX.md` file in the repository's root 
directory.  All files in each folder are detailed in the local `README.md` file,
but these lowercased index files describe the contents of each data file, as
opposed to directory contents. Each folder has a **subject** name and storage
**type** which are separated by a dash.

### Naming Scheme, Syntax and Meaning Associated With File Extensions :speech_balloon:

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
