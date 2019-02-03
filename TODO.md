Things To Do
============

* run `fdupes -nrd .` from the root project directory occassionally

* convert `dns-domains` and other folders to specified README markdown table format 

* split `text-words/security-words-dictionary.txt` into word types (noun, adjective, etc.)
  - write a tool namer script that utilizes those files

* Markdown link checker/editor

* Clearly document web busting terminology
  - dirs/dirnames, basenames, paths/dirpaths, filepaths, folders, words, queries, variables, names, hosts, domains, etc. 

* Write script that checks `[ $(cat $file | wc -l) -eq $(sort -u $file | wc -l) ]`  

* Utilize [simple-icons](https://github.com/simple-icons) to badge label entries, i.e. <https://img.shields.io/badge/csp-header-_.svg?logo=nginx&style=popout&longCache=true>  

* Or as a [simple-icons](https://github.com/simple-icons) alternative.. <https://unpkg.com/simple-icons@latest/ticons/yammer.svg>

*  [OpenRefine](https://github.com/OpenRefine)

* fill in `scripts/init/README.md`

* create a `README.md` for the contrib folder that details pull requests, i.e. `CONTRIBUTING.md`

* create `dirbdirs-feedback` script (see `README.md`)

* Make PoC's part of the werdlists wiki

* check */README.md for links, especially `environ-vars`

* write script that converts Wikipedia article URL's with HTML tables to markdown tables

* script that shortens URL's (removes en. subdomain from Wikipedia, www if not needed, remove trailing slash, HTTPS if possible)

* site:{nvd,pages}.nist.gov ext:csv,xml https://pages.nist.gov/sctools/

* Write manual page for werdlists itself, or scripts it uses

* Write `sed` script to simplify URL's in markdown

* Make a file like `windows-data/security-advisories-2017.txt`, but with all years

* Make a 1.0 release on GitHub

* script to check each dir for missing `README.md` entries

* `scripts/write-index-lines` after fixing missing index entries and commit/push/tweet!

* add newer IIS HTTP status codes from [The HTTP status code in IIS 7.0, IIS 7.5, and IIS 8.0](https://support.microsoft.com/en-us/help/943891/the-http-status-code-in-iis-7-0--iis-7-5--and-iis-8-0)

* use find to parse `--help` output and create `argv-getopt-long.txt` in `linux-data`

* finish `scripts/extract-manpages-environ`

* make a script in `scripts/shared` to check if the CWD is scripts or repo root

* Make markdown tables in `telco-data/mobile-codes-notes.txt` like [List of Mobile Country or Geographical Area Codes](https://www.itu.int/dms_pub/itu-t/opb/sp/T-SP-E.212A-2017-PDF-E.pdf)

* Make markdown tables in `telco-data/country-codes-notes.txt` like [List of ITU-T Recommendation E.164 Assigned Country Codes](https://www.itu.int/itudoc/itu-t/ob-lists/icc/e164_763.pdf)

* write script to clean up which includes a `sort -u` of all `README.md` files

* split `code-keywords/ch-language-keywords.txt` into multiple files

* create a `werdlists` command to perform common utility functions like search

* delineate `opersys-strs/opsys-names-list` with newlines

* make `WRDLS_MDRDM` `until` code source'd from other scripts like `dirs-vs-index`

* write `files-vs-index` to check `index.lst` files in folders (webapp-data needs it.)

* write program for cleaning up regular wordlists

* write script/program for cleaning up CSV's and other file types for `scripts/bin`

* make extensions folder for to store stuff on each file name extension

* add `NetworkManager(8)` environment variable names to the full list
