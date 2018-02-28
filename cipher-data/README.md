compsec-cert-std: [NIST FIPS 140-2](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.140-2.pdf) cryptographic product security validation  
crypto-product-std: "Common Criteria" compliance according to national authority  
descrypt-admin-allsalts: Single DES of string "admin" with all salts  
gnutls-cli-extra: Miscellaneous output of same [GnuTLS](https://www.gnutls.org/ "GNU Transport Layer Security Library") command as above  
gnutls-cli-list: Command output of [GnuTLS](https://www.gnutls.org/ "GNU Transport Layer Security Library") command line interface algorithm list  
http2-ciphers-blacklist: Ciphers rejected by the HTTP2 protocol specification  
java-example-keystore: Example of cryptographic Java security storage file  
nodejs-crypto-ciphers: cipher identifiers defined by the [NodeJS](https://nodejs.org/) crypto module  
nodejs-crypto-hashes: hash identifiers defined by the [NodeJS](https://nodejs.org/) crypto module  
openssl-cipher-algorithms: `openssl list -cipher-algorithms | cut -d' ' -f1 | sort -u`  
openssl-cipher-commands: `echo $(openssl list -cipher-commands) | tr ' ' '\n'`  
openssl-ciphers-verbose: Verbose info on ciphers supported by [OpenSSL](https://www.openssl.org) library  
openssl-digest-algorithms: `echo $(openssl list -cipher-commands) | tr ' ' '\n'`  
openssl-pubkey-algorithms: `openssl list -public-key-algorithms | grep PEM | cut -d: -f3`  
tls-cipher-suites: The macro constants that identify Windows TLS cipher suites  
