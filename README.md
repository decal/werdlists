[![Twitter: @decalresponds](https://img.shields.io/badge/contact-@decalresponds-blue.svg)](https://twitter.com/decalresponds "@decalresponds")
[![Ask Me Anything!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](issues/new "Ask Me Anything!")
[![werdlists](https://img.shields.io/badge/werd-lists-lightgrey.svg)](# "werdlists")
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0 "Apache License 2.0")
[![repo-size](https://img.shields.io/github/repo-size/decal/werdlists.svg)](# "repo-size")
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://gnu.org/software/bash/ "Made with Bash")

* * *
[![werdlists](logo.png)](# "Word Lists, Attack Strings, Miscellaneous Datasets and a PoC Wiki for Penetration Testing")
* * *

# "Word Lists" for Software Security Test Cases

> Word lists, dictionary files, attack strings, miscellaneous datasets and a PoC wiki for penetration testers

* <a href="#intro">Brief Introduction to `werdlists`</a>
* <a href="#inspire">Inspiration Taken from Similar Projects</a>
* <a href="#repo">Repository Directory Hierarchy and Structure</a>
  - <a href="#naming">Naming Scheme, Syntax and Meaning</a>
* <a href="#contents">Folder Names and Description of Contents</a>

## <a name="intro"></a>Brief Introduction to `werdlists` :scissors:

This project is a collection of word lists--they are mostly [whitespace-delimited](https://wikipedia.org/wiki/String_literal#Whitespace_delimiters)
or line-based.  Although the [`passes-dicts`](passes-dicts "Password Dictionaries") folder contains inputs for [password cracking](https://wikipedia.org/wiki/Password_cracking),
overall the files amassed here are intended to be useful in facilitating
the creation of insecure [program state](https://wikipedia.org/wiki/State_(computer_science)#Program_state) (with the help of a [black-box fuzzer](https://wikipedia.org/wiki/Fuzzing#Types_of_fuzzers) or scanning
utility, for example.)  The vast majority of files are simply [ASCII](https://wikipedia.org/wiki/ASCII "American Standard Code for Information Interchange") with the [UNIX](http://unix.org/what_is_unix.html)
style [newline](https://wikipedia.org/wiki/Newline).   

## <a name="inspire"></a>Inspiration Taken from Similar Projects :thought_balloon:

If you're already familiar with established repositories such as 
[`fuzzdb`](/fuzzdb-project/fuzzdb/ "The attack pattern dictionary") and 
[`SecLists`](/danielmiessler/SecLists/ "The security tester's companion"), 
then `werdlists` is quite similar in mission as it's a centralized attack strings 
and [input](https://wikipedia.org/wiki/Input_(computer_science)) data resource with its own unique style, organization, 
original hand-crafted contents, verification/management scripts, expanded concepts, etc.
`SecLists` is maintained by my colleague and co-worker at [IOActive](https://ioactive.com "IOActive"), [Daniel Miessler](https://danielmiessler.com "Daniel Miessler").

## <a name="repo"></a>Repository Directory Hierarchy and Structure :nut_and_bolt:

The [`scripts`](scripts) folder consists of [shell scripts](https://www.shellscript.sh "Shell Scripting Tutorial") used for repository maintenance.
All scripts use bash syntax and some data files were generated with a script.
Folder names are detailed in the "Folder Names and Description of Contents" 
section below.  All files in each folder are detailed in the `README.md` file
for that folder. 

### <a name="naming"></a>Naming Scheme, Syntax and Meaning :speech_balloon:

Most files have the `*.txt` extension signifying the `text/plain` [MIME type](https://wikipedia.org/wiki/Media_type)
Other file extensions in use are: `*.asc`, `*.csv`, `*.xml`, `*.html`, and `*.yml`
These are for [Comma-Separated Values](https://wikipedia.org/wiki/Comma-separated_values) (`text/csv`), 
[Extended Markup Language](https://wikipedia.org/wiki/XML) (`application/xml`),
[Hyper Text Markup Language](https://wikipedia.org/wiki/HTML) (`application/html`), etc.
Any file that is larger than 1MB uncompressed will be compressed with [xz](https://wikipedia.org/wiki/Xz)
according to the commands in the `scripts/compress-large-files` bash script. 

## <a name="contents"></a>Folder Names and Description of Contents :clipboard:

|&nbsp;&nbsp;_Folder&nbsp;&nbsp;Name_&nbsp;&nbsp;| _Description of Contents_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [arpa-headers](arpa-headers)    | :email: Header fields transmitted over [RFC2822](https://tools.ietf.org/html/rfc2822) style protocols like [SMTP](https://wikipedia.org/wiki/Simple_Mail_Transfer_Protocol)  
| [ascii-art](ascii-art)       | :art: "Low bit" a.k.a. 7-bit [ASCII art](https://wikipedia.org/wiki/ASCII_art) items without [control characters](https://wikipedia.org/wiki/Control_character)  
| [biology-info](biology-info)    | :microscope: Reference information useful in the study of biological issues  
| [browser-data](browser-data)    | :door: Data related to GUI browser software like [Chrome](https://google.com/chrome/ "Chrome Web Browser"), [FireFox](https://www.mozilla.org/en-US/firefox/new/ "Download FireFox"), etc.  
| [cert-data](cert-data)       | :scroll: Information commonly utilized by cryptographic certificate materials  
| [char-encodes](char-encodes)    | :ideograph_advantage: Various [character encodings](https://w3.org/International/articles/definitions-characters/ "Character encodings: Essential concepts") provided by different [locales](https://wikipedia.org/wiki/Locale_(computer_software) "Locale (computer software)")/[charsets](https://w3.org/International/articles/http-charset/index "Setting the HTTP charset parameter")  
| [chat-data](chat-data)       | :open_mouth: Additional data on [IRC](https://wikipedia.org/wiki/Internet_Relay_Chat), [XMPP](https://wikipedia.org/wiki/XMPP) and other such messaging protocols  
| [cipher-data](cipher-data)     | :blowfish: Data denoting or used by [cryptographic algorithm](https://wikipedia.org/wiki/Category:Cryptographic_algorithms) implementations  
| [cmd-usage](cmd-usage)       | :hammer: Help text shown in a terminal when attempting to execute [CLI](https://wikipedia.org/wiki/Command-line_interface "Command-line interface") programs  
| [cms-errors](cms-errors)      | :exclamation: Error codes and/or messages rendered by a [CMS](https://wikipedia.org/wiki/Content_management_system "Content Management System")  
| [code-keywords](code-keywords)   | :coffee: [Computer language](https://wikipedia.org/wiki/Computer_language) identifiers declared in defining standards such as [reserved words](https://wikipedia.org/wiki/Reserved_word)  
| [cpu-arch](cpu-arch)        | :factory: Low-level computer architecture and hardware subjects  
| [crypt-output](crypt-output)    | :sparkles: Cipher text string outputs created by [cryptographic hash functions](https://wikipedia.org/wiki/Cryptographic_hash_function)  
| [database-strs](database-strs)   | :floppy_disk: Strings often encountered when working with [database](https://wikipedia.org/wiki/Database) software  
| [dns-domains](dns-domains)     | :globe_with_meridians: A list of domains that may or may not be found in the live DNS tree  
| [dns-hostnames](dns-hostnames)   | :flashlight: The host name part of an [FQDN](https://wikipedia.org/wiki/Fully_qualified_domain_name "Fully Qualified Domain Name")  
| [dns-records](dns-records)     | :ticket: Data specific to [RR's](http://freesoft.org/CIE/Topics/78.htm "Resource Records") in the DNS system  
| [dns-servers](dns-servers)     | :battery: Data provided to, produced by or related to DNS name servers  
| [dns-toplevel](dns-toplevel)    | :top: TLD's or [Top Level Domains](https://wikipedia.org/wiki/Top-level_domain) are the uppermost part of DNS hierarchy  
| [environ-vars](environ-vars)   | :tent: [Environment variable](https://wikipedia.org/wiki/Environment_variable) names, settings, etc.  
| [exploit-info](exploit-info)    | :8ball: Technical information on exploitation of security vulnerabilities  
| [file-extens](file-extens)     | :anchor: Anything concerning [Filename extension](https://wikipedia.org/wiki/Filename_extension), i.e. the part after the period in a file name  
| [file-specs](file-specs)      | :file_folder: [File format](https://wikipedia.org/wiki/File_format) specifications as distributed by vendor(s)/author(s)  
| [ftp-data](ftp-data)        | :outbox_tray: Various [FTP](https://wikipedia.org/wiki/File_Transfer_Protocol "File Transfer Protocol") datum from RFC's and elsewhere  
| [glibc-data](glibc-data)      | :gear: Data taken from the source code of the [GNU C Library](https://gnu.org/software/libc/ "glibc")  
| [html-words](html-words)      | :keyboard: Words not uncommon to come across when parsing HTML dialects  
| [http-agents](http-agents)     | :flags: Software version banners for [HTTP User Agents](https://wikipedia.org/wiki/User_agent#Use_in_HTTP "User agent - Use in HTTP") also known as browsers  
| [http-headers](http-headers)    | :cookie: Header fields sent in requests and responses by browser/server software 
| [http-methods](http-methods)    | :arrow_forward: Names of HTTP [Request methods](https://wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) that are sent at the start of a browser's first request line  
| [http-params](http-params)     | :abcd: Parameters browsers sometimes send when requesting server [URI](https://wikipedia.org/wiki/Uniform_Resource_Identifier "Uniform Resource Identifier") paths  
| [http-security](http-security)   | :closed_lock_with_key: [HTTP security](https://w3.org/Protocols/rfc2616/rfc2616-sec15.html) info such as Content Security Policy
| [http-servers](http-servers)    | :office: Information related to the usage of [web server software](https://w3.org/Servers.html)  
| [http-status](http-status)     | :slot_machine: Numeric [HTTP status](https://httpstatuses.com) codes that denote the status of a web server during reply as specified in [RFC7231](https://tools.ietf.org/html/rfc7231#section-6 "Response Status Codes")  
| [inet-addrs](inet-addrs)      | :electric_plug: Numeric Internet addresses a.k.a. IP addresses--mostly version 4  
| [inet-routes](inet-routes)     | :cloud: Data useful in the maintenance and use of an Internet [routing table](https://wikipedia.org/wiki/Routing_table)  
| [inet-services](inet-services)   | :fountain: Lists of Internet protocols/daemons--similar to `/etc/services`  
| [infosec-people](infosec-people)  | :neckbeard: Noteworthy individuals known from [information security communities](http://infosecevents.net/communities/)  
| [iso-codes](iso-codes)       | :heavy_check_mark: [ISO](https://iso.org "International Standardization Organization") code numbers and such  
| [java-data](java-data)       | :sunny: Data found in or related to source code of programs written with [Java](https://java.com)  
| [linux-data](linux-data)      | :keycap_ten: Data identifiers and such from the [Linux](https://opensource.com/resources/linux "What is Linux?") operating system  
| [linux-paths](linux-paths)     | :paperclips: [Pathnames](https://linuxsurvival.com/linux-pathnames/) found on [file systems](https://wikipedia.org/wiki/File_system) created by Linux installations  
| [malware-iocs](malware-iocs)    | :skull: [IOC](https://wikipedia.org/wiki/Indicator_of_compromise "Indicator of Compromise") for identification of malware infections  
| [mobile-devs](mobile-devs)      | :iphone: [Mobile device](https://wikipedia.org/wiki/Mobile_device) development for "handheld" form factors  
| [net-attacks](net-attacks)     | :hotsprings: Info about attacks on telecommunications and Internetworks  
| [net-ifaces](net-ifaces)      | :desktop_computer: Detailed information which can be extracted from network interfaces  
| [ntfs-paths](ntfs-paths)      | :open_file_folder: File [paths](https://msdn.microsoft.com/library/windows/desktop/aa365247.aspx#paths) expected to be seen in [NTFS](https://wikipedia.org/wiki/NTFS "New Technology File System") folders  
| [owasp-data](owasp-data)      | :honeybee: Data from or for [OWASP](https://www.owasp.org "Open Web Application Security Project")  
| [passes-dicts](passes-dicts)    | :key: Dictionary files used in [brute-force attacks](https://wikipedia.org/wiki/Brute-force_attack) against account passwords  
| [passes-sites](passes-sites)    | :unlock: Password lists that were publicized after major site compromises  
| [perl-data](perl-data)       | :camel: Data often seen in [PERL](http://www.perl.org) (Practical Extraction and Report Language)  
| [php-data](php-data)        | :page_facing_up: Files containing information about the [PHP](http://www.php.net) programming language  
| [postal-data](postal-data)     | :mailbox_with_mail: [United States Postal Service](https://www.usps.com/) information  
| [python-data](python-data)     | :snake: Data used by the [Python](https://www.python.org/) scripting language interpreter at runtime  
| [radio-data](radio-data)      | :radio: Things commonly used in [radio frequency](https://wikipedia.org/wiki/Radio_frequency) transmissions  
| [regex-data](regex-data)      | :speech_balloon: Regular expression patterns to mount attacks and match strings  
| [ruby-data](ruby-data)       | :gem: Data typically seen within the syntax of the [Ruby](https://www.ruby-lang.org) scripting language  
| [search-dorks](search-dorks)    | :mag_right: General purpose search-engine queries likely to find insecure sites  
| [smtp-messages](smtp-messages)   | :envelope: Messages (i.e. signatures, auto-replies, etc.) sent by [SMTP](https://wikipedia.org/wiki/Simple_Mail_Transfer_Protocol "Simple Mail Transfer Protocol") servers  
| [soap-messages](soap-messages)   | :incoming_envelope: [SOAP](https://wikipedia.org/wiki/SOAP "Simple Object Access Protocol") (Simple Object Access Protocol) messages  
| [social-data](social-data)     | :eyes: Sociological or [social media](https://wikipedia.org/wiki/Social_media) related data sets  
| [software-strs](software-strs)   | :minidisc: Strings that describe [software engineering](https://wikipedia.org/wiki/Software_engineering), [programming languages](https://wikipedia.org/wiki/Programming_language), etc.  
| [string-enums](string-enums)    | :ferris_wheel: Enumerations of values that aren't too terribly unusual  
| [system-admin](system-admin)    | :necktie: System administration and [BOFH](https://wikipedia.org/wiki/Bastard_Operator_From_Hell) related materials  
| [system-notices](system-notices)  | :warning: Disclaimer/warning messages shown by networked computer systems  
| [telco-data](telco-data)      | :telephone_receiver: Data on voice-based telecommunications technologies: [POTS](https://wikipedia.org/wiki/Plain_old_telephone_service "Plain old telephone service"), [PCS](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/broadband-personal-communications-service-pcs "Personal Communications Services"), [VoIP](https://wikipedia.org/wiki/Voice_over_IP "Voice over IP"), [SMS](https://wikipedia.org/wiki/SMS "Short Message Service") etc.  
| [text-files](text-files)      | :pushpin: a special kind of "text file" as in those archived at [textfiles.com](https://textfiles.com), i.e. old school zine articles  
| [text-words](text-words)      | :pencil2: Lists of words likely to be found in an actual hard copy [dictionary](https://www.merriam-webster.com)  
| [top-secret](top-secret)      | :alien: Files and/or data related to documents that were/are classified  
| [unicode-data](unicode-data)    | :symbols: [Unicode](https://unicode.org/ "The Unicode Consortium") character usage and representation  
| [unix-data](unix-data)       | :shell: Data associated with various flavors of the UNIX OS and its clones  
| [unix-paths](unix-paths)      | :file_cabinet: File path names found in various [UNIX file systems](https://wikipedia.org/wiki/Unix_File_System)  
| [uri-attacks](uri-attacks)     | :boom: Malicious URI materials specially crafted for attack targets  
| [uri-schemes](uri-schemes)     | :paperclip: Lists containing references for [URI schemes](https://iana.org/assignments/uri-schemes/uri-schemes.xhtml) (part before colon)  
| [uri-data](uri-data)        | :link: [Universal Resource Identifier](https://w3.org/Addressing/#background "Learning About URI's") related data  
| [vuln-data](vuln-data)       | :bar_chart: Information about security vulnerabilities found in server software  
| [webapp-attacks](webapp-attacks)  | :syringe: [Security Proof-of-concept](https://wikipedia.org/wiki/Proof_of_concept#Security) samples demonstrating various styles of web application attacks  
| [webapp-data](webapp-data)     | :briefcase: Data associated with applications hosted on web servers  
| [webapp-dirs](webapp-dirs)     | :bookmark_tabs: Directories related to applications running on a web server  
| [webapp-files](webapp-files)    | :card_index: Files related to applications running on a [web server](https://wikipedia.org/wiki/Web_server)  
| [webapp-paths](webapp-paths)    | :surfer: Path names related to applications running on a web server  
| [webapp-words](webapp-words)    | :thought_balloon: Words related to applications running on a web server  
| [web-sites](web-sites)       | :earth_americas: Addresses to and/or information on well known/organized WWW sites  
| [wifi-networks](wifi-networks)   | :satellite: [IEEE 802.11](http://ieee802.org/11/ "The Working Group for WLAN Standards") [Wi-Fi](https://wikipedia.org/wiki/Wi-Fi) network information  
| [windows-data](windows-data)    | :briefcase: Data only found within the [Microsoft Windows](https://wikipedia.org/wiki/Microsoft_Windows) series of OSes  

* * *

