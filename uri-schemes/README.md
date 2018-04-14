browser-about-uris: browser-specific URI's that rely on the `about:` scheme  
chrome-winobj-urls: URL's that successfully load on Windows using the `chrome:` scheme (list compiled by correlating with [WinObjEx64](https://github.com/hfiref0x/WinObjEx64))  
curl-config-protocols: output of the command `curl-config --protocols`  
lynx-uri-schemes: Format strings that define URI schemes supported by the console mode browser lynx; extracted from compiled binary via: `strings /usr/bin/lynx | egrep -i '^lynx[^:]+:[^ ]+$'`  
msft-uri-schemes: URI schemes proprietary to [Microsoft Corporation](https://microsoft.com)  
w3c-wiki-schemes: Schemes taken from the UriSchemes article on the [W3C Wiki](https://w3.org/wiki/Main_Page)  
win10-builtin-schemes: [URI schemes builtin to Windows 10](https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-default-app "Launch the default app for a URI")  
win10-settings-pages: URI's with the [`ms-settings:`](https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference "ms-settings: URI scheme reference") scheme for Windows 10 Settings Pages  
