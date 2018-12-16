[![Twitter: @decalresponds](https://img.shields.io/badge/contact-@decalresponds-blue.svg)](https://twitter.com/decalresponds "@decalresponds")
[![Ask Me Anything!](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/decal/werdlists/issues/new "Ask Me Anything!")
[![werdlists](https://img.shields.io/badge/werd-lists-lightgrey.svg)](# "werdlists")
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://apache.org/licenses/LICENSE-2.0 "Apache License 2.0")
[![repo-size](https://img.shields.io/github/repo-size/decal/werdlists.svg)](# "repo-size")
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://gnu.org/software/bash/ "Made with Bash")

* * *
[![werdlists](logo.png)](# "Word Lists, Attack Strings, Miscellaneous Datasets and Collections of Proof-of-Concept Test Cases With a Collection of Tools for Penetration Testers")
* * *

# "Word Lists" for Software Security Test Cases

> Word lists, Dictionary Files, Attack Strings, Miscellaneous Datasets and Proof-of-Concept Test Cases With a Collection of Tools for Penetration Testers 

* <a href="#toolintro">Introduction to Tools in `werdlists`</a>
* <a href="#hostnames">Hostname Discovery</a>
* <a href="#pathnames">Forced Browsing</a>
* <a href="#usernames">Username Enumeration</a>
* <a href="#passwords">Password Cracking</a>
* <a href="#proxies">Attack Proxies</a>

## <a name="toolintro"></a>Introduction to Tools in `werdlists`  

A major benefit of the data sets distributed with `werdlists` is that they can be utilized with security testing tools to increase the chances
that positive results will be returned from a penetration tester's reconaissance procedures. The names of the tool categories below have been 
purposefully ordered to reflect the order in which they might be used during the course of a pen test. Many word list files in the `werdlists`
repository were either created for or are distributed with a tool that fulfills one of the purposes in the sections below:

## <a name="hostnames"></a>DNS Hostname Enumeration  

Host name enumeration and enumeration of other information from the DNS protocol are exercises carried out in the early phases of a network 
test. Although resolving domain names may seem like a simplistic operation to the uninitiated, it actually has such a number of complexities 
that one can almost never claim they've completely downloaded all available info from a particular name server without [dynamic updates](https://wikipedia.org/wiki/Dynamic_DNS#Standards-based_dynamic_DNS_update) and
[zone transfers](https://wikipedia.org/wiki/DNS_zone_transfer).
scenario. Therefore, having detailed wordlists and tools with speedy execution are keys to success.

|&nbsp;&nbsp;&nbsp;&nbsp;_Tool&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Utility_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [subdomain3](https://github.com/yanxiu0614/subdomain3) | :email:
| [megplus](https://github.com/EdOverflow/megplus) | 
| [OWASP Amass](https://github.com/caffix/amass) | 
| [subDomainsBrute](https://github.com/lijiejie/subDomainsBrute) |
| [massdns](https://github.com/blechschmidt/massdns) | 
| [


## <a name="pathnames"></a>Forced Browsing

|&nbsp;&nbsp;&nbsp;&nbsp;_Tool&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Utility_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [pathgro](https://github.com/decal/pathgro "combinatoric pathname wordlist expansion--it's like Miracle-Gro(tm) for your dirbusting technique!") | :email:
| [dirb](https://dirb.sf.net "") | 
| [nikto](https://cirt.net/Nikto2 "") |
| [Dir-Xcan](https://github.com/NoobieDog/Dir-Xcan "") |
| [OpenDoor](https://github.com/stanislav-web/OpenDoor "") |
| [dirsearch](https://github.com/maurosoria/dirsearch "") |
| [gobuster](https://github.com/OJ/gobuster "") |
| [pathbrute](https://github.com/milo2012/pathbrute "") |
| [DeepSearch](https://github.com/m4ll0k/DeepSearch "DeepSearch - Advanced Web Dir Scan") |  
| []


## <a name="usernames"></a>Username Enumeration  

Once a particular service is known, a pen tester should be keen on attacking its remote access control--particularly authentication. It is highly
likely that a username/password combination is required. Therefore, enumeration of user names will be a handy ability. The names of common system 
accounts and even common human accounts will be especially helpful at this point.

|&nbsp;&nbsp;&nbsp;&nbsp;_Tool&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Utility_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [usernamer](https://github.com/jseidl/usernamer) | :email:

## <a name="passwords"></a>Password Cracking  

When an account has been singled out for attack and it uses password authentication, then very often the next step is cracking that account's
password itself or the cipher-text version of it. Testers will probably benefit from the data provided by `werdlists` in a scenario such as 
cracking a password online via brute-force search against a network daemon. The wordlist files stored in the folders `passes-dicts` and 
`passes-sites` were invented specifically for such a purpose.

|&nbsp;&nbsp;&nbsp;&nbsp;_Tool&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Utility_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [hashcat](https://hashcat.net) | :email:
| [John The Ripper](https://openwall.com/john) :email: 

## <a name="proxies"></a>HTTP Attack Proxies  

HTTP attack proxies are indispensable tools for anyone involved in web application penetration testing. 

|&nbsp;&nbsp;&nbsp;&nbsp;_Tool&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Utility_
|:----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| [Burp Suite](https://portswigger.net) | :email:
| [OWASP ZAP](https://owasp.org "Zed Attack Proxy") | :art: 
| [Fiddler](https://telerik.com/fiddler) | :microscope: 
| [Charles](https://charlesproxy.com) | :door: 
| [James](https://github.com/james-proxy/james) | :scroll: 


* * *

