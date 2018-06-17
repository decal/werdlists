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

* <a href="#intro">Introduction to Tools in `werdlists`</a>
* <a href="#fingerprints">Application Layer Fingerprinting</a>
* <a href="#usernames">Username Enumeration</a>
* <a href="#passwords">Password Cracking</a>
* <a href="#hostnames">DNS Hostname Enumeration</a>
* <a href="#proxies">HTTP Attack Proxies</a>

## <a name="intro"></a>Introduction to Tools in `werdlists`  

A major benefit of the data sets distributed with `werdlists` is that they can be utilized with security testing tools to increase the chances
that positive results will be returned from a penetration tester's reconaissance procedures. The names of the tool categories below have been 
purposefully ordered to reflect the order in which they would be used throughout the course of a test. Many word list files in the `werdlists`
repository were either created for or are distributed with a tool that fulfills one of the following purposes:

## <a name="hostnames"></a>DNS Hostname Enumeration  

Host name enumeration and enumeration of other information from the DNS protocol are exercises carried out in the early phases of a network 
test. Although resolving domain names may seem like a simplistic operation to the uninitiated, it actually has such a number of complexities 
that one can almost never claim they've completely downloaded all available info from a particular name server when testing in a black-box
scenario. Therefore, having detailed wordlists and tools with speedy execution are keys to success.

## <a name="fingerprints"></a>Protocol Fingerprinting  

Protocol fingerprinting can be performed at almost every layer of the OSI networking model. NMap's OS fingerprinting feature takes advantage
of differences that can be observed through interaction with a target's transport layer (i.e. TCP or Transport Control Protocol) implementation.
NMap also supports application layer fingerprinting, but refers to this feature in its documentation as "Service and Version Detection". This is
because it first sends probes to an open port in order to determine which service is listening there, i.e. it does not assume that standards are
being followed such that each open port has the expected service daemon listening. After it determines the service, it attempts to discover the
version of that service's software. Since NMap does an excellent job of maintaining the entries in its fingerprint databases, `werdlists` will
focus on other software that implements similar techniques and could benefit from third-party data.

## <a name="usernames"></a>Username Enumeration  

Once a particular service is known, a pen tester should be keen on attacking its remote access control--particularly authentication. It is highly
likely that a username/password combination is required. Therefore, enumeration of user names will be a handy ability. The names of common system 
accounts and even common human accounts will be especially helpful at this point.

## <a name="passwords"></a>Password Cracking  

When an account has been singled out for attack and it uses password authentication, then very often the next step is cracking that account's
password itself or the cipher-text version of it. Testers will probably benefit from the data provided by `werdlists` in a scenario such as 
cracking a password online via brute-force search against a network daemon. The wordlist files stored in the folders `passes-dicts` and 
`passes-sites` were invented specifically for such a purpose.

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

