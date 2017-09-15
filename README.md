* * *
```
```
* * *
```
                                        _   _  _       _
               __      __ ___  _ __  __| | | |(_) ___ | |_  ___
               \ \ /\ / // _ \| '__|/ _` | | || |/ __|| __|/ __|
                \ V  V /|  __/| |  | (_| | | || |\__ \| |_ \__ \
                 \_/\_/  \___||_|   \__,_| |_||_||___/ \__||___/
```
* * *
```
```
* * *

# Brief Introduction to `werdlists`

Text files consisting mostly of [Wordlists][] (whitespace-delimited/line-based
entries), [CSV][] (Comma Separated Values), Office Open XML ([OOXML][]) (a.k.a.
[ECMA-376][]) and similar data sets that are useful in manually crafting test
cases or developing an automated black-box fuzzer. In particular, the data 
contained within these mostly text files is intended for the purposes of 
programmatically testing security..

## Inspiration Taken from Similar Projects

If you're already familiar with established repositories such as 
[fuzzdb](https://github.com/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[SecLists](https://github.com/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
resource--just with its own unique style and organization, original hand-crafted contents, 
expanded concepts, etc.

## Description of the Repository Directory Hierarchy

The `scripts` folder consists of shell scripts used for file system maintenance.
Folder names are outlined in the `INDEX.md` file at the root of the repository's
directory hierarchy.  All files in each folder are detailed in the local 
`index.md` file, but these lowercased index files describe file names as opposed
to directory contents.


### Naming Scheme, Syntax and Meaning Associated With File Extensions

Most files have the *.txt* extension signifying the `text/plain` MIME type.
Some other file extensions are in use as well, including: *.csv*, *.xml*,
*.bin*, etc.  These are for Comma-Separated Values, Extended Markup Language
and Binary data, respectively.  The index in the root folder (`INDEX.md`),
as well as the indices in each data directory (`index.md`) are of course in
markdown format.


* * *

[Wordlists]: http://wordlist.aspell.net "SCOWL (Spell Checker Oriented Word Lists)"
[CSV]: https://en.wikipedia.org/wiki/Comma-separated_values "Wikipedia - Comma-seperated Values"
[OOXML]: http://officeopenxml.com "Office Open XML - What is OOXML?"
[ECMA-376]: http://www.ecma-international.org/publications/standards/Ecma-376.htm "Standard ECMA-376 (Office Open XML File Formats)"
