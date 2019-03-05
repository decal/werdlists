[![werdlists/cipher-data](https://img.shields.io/badge/werdlists-cipher_data-purple.svg?logo=github&style=popout&longCache=true)](# "werdlists/cipher-data")

|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_Folder&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Contents_
|:--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------
| [all-certificate-records](all-certificate-records.csv) | <http://ccadb-public.secure.force.com/mozilla/AllCertificateRecordsCSVFormat> 
| [compsec-cert-std](compsec-cert-std.txt) |  [NIST FIPS 140-2](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.140-2.pdf) cryptographic product security validation 
| [crypto-product-std](crypto-product-std.txt) |  ["Common Criteria"](https://wikipedia.org/wiki/Common_Criteria) compliance according to national authority 
| [crypto-attacks-list](crypto-attacks-list.txt) | a list of cryptographic attack names including recent techniques against TLS  
| [descrypt-admin-allsalts](descrypt-admin-allsalts.txt) |  Single [DES](https://wikipedia.org/wiki/Data_Encryption_Standard "Data Encryption Standard") of string "admin" with all salts 
| [gnutls-cli-extra](gnutls-cli-extra.txt) |  Miscellaneous output of same [GnuTLS](https://www.gnutls.org/ "GNU Transport Layer Security Library") command as above 
| [gnutls-cli-list](gnutls-cli-list.txt) |  Command output of [GnuTLS](https://www.gnutls.org/ "GNU Transport Layer Security Library") command line interface algorithm list 
| [http2-ciphers-blacklist](http2-ciphers-blacklist.txt) |  Ciphers rejected by the [HTTP2 protocol specification](http://httpwg.org/specs/rfc7540.html "Hypertext Transfer Protocol Version 2 %28HTTP/2%29") 
| [java-example-keystore](java-example-keystore.bin) |  Example of cryptographic [JKS (Java KeyStore)](https://wikipedia.org/wiki/Keystore) file 
| [javascript-crypto-strings](javascript-crypto-strings.txt) |  strings listed by `get*()` functions in the NodeJS `crypto` module 
| [nodejs-crypto-ciphers](nodejs-crypto-ciphers.txt) |  cipher identifiers defined by the [NodeJS](https://nodejs.org/) crypto module 
| [nodejs-crypto-hashes](nodejs-crypto-hashes.txt) |  hash identifiers defined by the [NodeJS](https://nodejs.org/) crypto module 
| [openssl-cipher-algorithms](openssl-cipher-algorithms.txt) |  `openssl list -cipher-algorithms | cut -d' ' -f1 | sort -u` 
| [openssl-cipher-commands](openssl-cipher-commands.txt) |  `echo $(openssl list -cipher-commands) | tr ' ' 'n'` 
| [openssl-ciphers-verbose](openssl-ciphers-verbose.txt) |  Verbose info on ciphers supported by [OpenSSL](https://www.openssl.org) library 
| [openssl-digest-algorithms](openssl-digest-algorithms.txt) |  `echo $(openssl list -cipher-commands) | tr ' ' 'n'` 
| [openssl-pubkey-algorithms](openssl-pubkey-algorithms.txt) |  `openssl list -public-key-algorithms | grep PEM | cut -d: -f3` 
| [testssl-etc-curves](testssl-etc-curves.txt) | listing of elleptic curve algorithms identified by their [IANA](https://iana.org) name via <https://testssl.sh/2.9.5/etc/curves.txt>  
| [tls-cipher-suites](tls-cipher-suites.txt) |  The macro constants that identify [Windows TLS cipher suites](https://msdn.microsoft.com/library/windows/desktop/aa374757.aspx "Cipher Suites in TLS/SSL (Schannel SSP)") 

* * *

