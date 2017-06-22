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

Text files consisting mostly of word lists (whitespace-delimited/line-based
entries) [GNU Aspell] [1], CSV (Comma Separated Values) [Wikipedia] [2], Office
Open XML [OOXML] [3] (a.k.a.  ECMA-376 [ECMA] [4]) and similar data sets that are
useful in manually crafting test cases or developing an automated black-box
fuzzer. In particular, the data contained within these mostly text files is
intended for the purposes of programmatically testing security..

## Inspiration Taken from Similar Projects

If you're already familiar with established repositories such as 
[fuzzdb](https://github.com/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[SecLists](https://github.com/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
resource--just with its own unique style and organization, original hand-crafted contents, 
expanded concepts, etc.

## Description of the Repository Directory Hierarchy

The `scripts` folder consists of shell scripts used for maintenance and such. 
Data folders are outlined in the `root-index.lst` file at the root of the 
repository's directory hierarchy.  All files in each folder are detailed in one
of their own specific `index.lst` files which is like `root-index.lst`, but it
only contains entries that describe associated file names as opposed to folder
names.

### Naming Scheme, Syntax and Meaning Associated With File Extensions

Although the majority of files have the *.txt* extension that signifies the MIME
type text/plain--pay close attention, because other file extensions are in use 
on occassion as well, such as *.csv* (comma-separated values), or *.xml* which 
denotes Extended Markup Language.  Files with a non-ASCII or binary character 
set are assigned the *.bin* extension.  

### MIME Types Determined for Several Files With Varying Extensions

```
user@host:~/repos/werdlists$ file -i cipher-data/java-example-keystore.bin
./cipher-data/java-example-keystore.bin: application/x-java-keystore; charset=binary
user@host:~/repos/werdlists$ file -i http-headers/http-response-headers.txt
http-headers/http-response-headers.txt: text/plain; charset=us-ascii
user@host:~/repos/werdlists$ file -i nvd-data/nvdcve-2.0-Recent.xml
nvd-data/nvdcve-2.0-Recent.xml: application/xml; charset=us-ascii
user@host:~/repos/werdlists$ file -kz file-extens/classify-list.xlsx
file-extens/classify-list.xlsx: XML 1.0 document text\012- XML document, ASCII text, with very long lines, with CR line ter
minators\012- data (Zip archive data, at least v2.0 to extract\012- data)
```

* * *

[1]: http://wordlist.aspell.net "SCOWL (Spell Checker Oriented Word Lists)"
[2]: https://en.wikipedia.org/wiki/Comma-separated_values "Wikipedia - Comma-seperated Values"
[3]: http://officeopenxml.com "Office Open XML - What is OOXML?"
[4]: http://www.ecma-international.org/publications/standards/Ecma-376.htm "Standard ECMA-376 (Office Open XML File Formats)"
