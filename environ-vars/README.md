|&nbsp;&nbsp;&nbsp;&nbsp;_Folder&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Contents_
|:----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------
| [adobe-expmgr-names](adobe-expmgr-names) |  [Adobe Experience Manager](https://adobe.com/marketing-cloud/experience-manager.html) environment variables of quickstart 
| [apache2-ctl-names](apache2-ctl-names) |  environment variables used by the Apache2 control script 
| [apache-environ-names](apache-environ-names) |  non-suEXEC environment variables specific to [Apache httpd](https://httpd.apache.org) 
| [apache-mesos-envinfos](apache-mesos-envinfos) |  info on environment variables associated w/ [Apache Mesos](https://mesos.apache.org) 
| [apache-ssl-environ](apache-ssl-environ) |  environment variables used by Apache's [mod_ssl](https://wikipedia.org/wiki/Mod_ssl) module 
| [apache-suexec-names](apache-suexec-names) |  environment variables strings'd from Apache suEXEC binary 
| [bashenv-declared-environ](bashenv-declared-environ) |  variables discovered in `bash` by running `declare -p` 
| [basic-cgi-environ](basic-cgi-environ) |  Standard or common [CGI](https://wikipedia.org/wiki/Common_Gateway_Interface "Common Gateway Interface") environment variable names 
| [binutils-ld-names](binutils-ld-names) |  [GNU binutils](https://gnu.org/software/binutils/) linker environment variables 
| [byobu-environ-names](byobu-environ-names) |  variables defined by the text-based window manager wrapper 
| [common-gateway-names](common-gateway-names) |  environment variables used for dynamic web scripting 
| [configure-help-environs](configure-help-environs) |  environment variables parsed from `./configure --help` 
| [curl-environ-names](curl-environ-names) |  variables set to define proxies for the `curl(1)` tool 
| [dash-environ-names](dash-environ-names) |  environment variables set by default on Debian dash shell 
| [debian-shell-names](debian-shell-names) |  common names of environment variables in Debian BASH shell 
| [dialog-command-envinfos](dialog-command-envinfos) |  description of environment variables from `dialog(1)` 
| [environ-setenv-names](environ-setenv-names) |  environment variables displayed by `env` at shell prompt 
| [etc-default-variables](etc-default-variables) |  variable names parsed from scripts in `/etc/default` 
| [etc-init-environ](etc-init-environ) |  environment variables parsed from scripts in `/etc/init` 
| [flask-environ-names](flask-environ-names) |  environment variables for the [Flask Python web framework](http://flask.pocoo.org/) 
| [glibc-source-environ](glibc-source-environ) |  environment variables grep'ed from glibc's source code 
| [gnumake-implicit-arguments](gnumake-implicit-arguments) |  [GNU Make](https://gnu.org/software/make) environment variables for command-line arguments 
| [gnumake-implicit-commands](gnumake-implicit-commands) |  gmake environment variables for commands 
| [hamilton-cshell-envnames](hamilton-cshell-envnames) |  environ variable names in [Hamilton C shell](https://hamiltonlabs.com) 
| [hesiod-environ-names](hesiod-environ-names) |  a name server interface library's environment variables 
| [libc-ldso-names](libc-ldso-names) |  [C standard library](https://wikipedia.org/wiki/C_standard_library) dynamic linker/loader environment names 
| [linux-pids-assign](linux-pids-assign) |  environment variable assignments found in the Linux process table 
| [linux-pids-names](linux-pids-names) |  environment variable names from the Linux process table 
| [locale-environ-names](locale-environ-names) |  environment variable names for multi-language support 
| [macos-dyld-names](macos-dyld-names) |  MacOS dynamic link editor environment variable names 
| [macos-pids-names](macos-pids-names) |  environment variable names from the Mac OSX process table 
| [mallopt-environ-names](mallopt-environ-names) |  GNU libc memory allocation option environment variables 
| [manpage-environ-names](manpage-environ-names) |  environment variables listed in Linux manual pages 
| [misc-environ-assign](misc-environ-assign) |  environment variable values that don't fall anywhere else 
| [misc-environ-names](misc-environ-names) |  miscellaneous environment variable names don't fit elsewhere 
| [mosh-environ-names](mosh-environ-names) |  [MObile SHell](https://mosh.org/ "Mosh: the mobile shell") specific environment variable names 
| [msft-environ-names](msft-environ-names) |  Environment variables documented on the MSDN web site 
| [netbsd-environ-names](netbsd-environ-names) |  [NetBSD](https://netbsd.org) environment variable names 
| [nis-environ-names](nis-environ-names) |  Environment variables utilized by the Sun Microsystems [NIS](https://wikipedia.org/wiki/Network_Information_Service "Network Information Service") 
| [openssl-environ-names](openssl-environ-names) |  Environment variable names for use with the [OpenSSL library](https://openssl.org) 
| [phabricator-environ-names](phabricator-environ-names) |  Environment variable names for the [Phabricator IDE](https://www.phacility.com/phabricator/) 
| [powershell-variable-names](powershell-variable-names) |  Result of executing `Set-Location Variable:; Get-ChildItem LICENSE.txt NOTICE.txt README.md TODO.md _config.yml ansi-art arpa-headers ascii-art bin biology-info browser-data cert-data char-encodes chat-data cipher-data cmd-usage cms-errors code-keywords cpu-arch crypt-output database-strs dns-domains dns-hostnames dns-records dns-servers dns-toplevel environ-vars exploit-info file-extens file-specs ftp-data glibc-data html-words http-agents http-headers http-methods http-params http-security http-servers http-status inet-addrs inet-routes inet-services infosec-people iso-codes java-data linux-data linux-paths logo.png malware-iocs mobile-devs net-attacks net-ifaces ntfs-paths owasp-data passes-dicts passes-sites perl-data php-data postal-data python-data radio-data regex-data ruby-data scripts search-dorks smtp-messages soap-messages social-data software-strs string-enums system-admin system-notices telco-data text-files text-words tools top-secret unicode-data unix-data unix-paths uri-attacks uri-data uri-schemes vuln-data web-sites webapp-attacks webapp-data webapp-dirs webapp-files webapp-paths webapp-words wifi-networks windows-data | %{Write-Host $_.Name}` in `powershell.exe` 
| [posix-environ-names](posix-environ-names) |  POSIX Environment Variables from [Open Group](https://www.opengroup.org) 
| [resolv-environ-names](resolv-environ-names) |  DNS resolver library configuration environment variables 
| [skygear-server-names](skygear-server-names) |  Skygear Backend-as-a-Service environ names of `.env.example` 
| [systemd-environ-names](systemd-environ-names) |  system and service manager environment variable names 
| [ubuntu-environ-names](ubuntu-environ-names) |  extracted from [Environment Variables article in Ubuntu Community Help Wiki](https://help.ubuntu.com/community/EnvironmentVariables) 
| [unstd-cgi-environ](unstd-cgi-environ) |  Less typical CGI (Common Gateway Interface) variable names 
| [win10-set-assign](win10-set-assign) |  list of environment variables displayed by MS-DOS command SET 
| [zsh-environ-assign](zsh-environ-assign) |  assigned environment variables in the Z shell under Debian 
| [zsh-environ-names](zsh-environ-names) |  environment variables set by default in Debian [Z shell](https://zsh.org) 

* * *

