Program		: hpHosts
Version		: 16-08-2014
Released	: 16th August 2014
Licence		: Freeware
Author		: Steven Burn
Company		: Malwarebytes Corp
Website		: http://hosts-file.net
Download	: http://hosts-file.net/?s=Download
Support		: http://mysteryfcm.co.uk/?mode=Contact

***********************************************************************
In this document
***********************************************************************

1. Overview
2. System Requirements
3. Known Issues
4. Updates
5. Updates Planned
6. Release Notes

	- Update notes
	- General Information
	- DNS Client

7. Installation
8. Installation Notes
9. Uninstallation
10. Automated Installation
11. Automated Uninstallation
12. Alternative hosts file providers
13. Conditions of use

***********************************************************************

1. Overview:

	hpHOSTS is a community managed hosts file. What that means to you is that you have a key role to play in improving hpHOSTS by submitting undesirable sites you think should be listed or by requesting removal of sites you think may have been added in error. This process is performed in our public forums and all decisions to add or remove sites are subject to public criticism and ongoing re-evaluation.

	If you would like to get involved, please register* at the hpHosts File Support Forum (see the Support URL above)

2. System Requirements:

	NOTE: These are MINIMUM recommendations and should be taken as a guide ONLY.

	- Microsoft Windows 95 or above
	- MAC 
	- Linux

3. Known Issues:

	None

4. Updates:

	Modified: General HOSTS updates

5. Updates planned:

	Suggestions/contributions welcome

6. Release Notes:

	**************************************************************
	Update Notes
	**************************************************************

	None

	**************************************************************
	General Information
	**************************************************************

	To allow for easier access for those using hpHosts that still
	require Yahoo access, the Yahoo hosts is available as a
	seperate download for those that still wish to block them.

	PGP Signature

	The HOSTS.TXT.sig file is a cryptographic signature and not a
	part of the hosts file. If you are not running some 32bit
	version of PGP then you don't need it and may discard it.
	The purpose of the PGP sig is to allow PGP users who have
	added my public key block to their keyrings to verify the
	HOSTS.TXT came from me and has not been tampered with or
	altered by a third party. If you download a hosts file
	purported to be from me which fails a signature check, don't
	use it!! Report the incident to me at hphosts@it-mate.co.uk

	My public key block may be downloaded from the hpHosts
	homepage.

	**************************************************************
	DNS Client
	**************************************************************

	Users of Microsoft Windows 2000 and above, may want to disable
	the Windows built in DNS service if experiencing a slowdown as
	a result of using the HOSTS file for advert and malicious
	site blocks.

	To do this;

		I  .	Click Start > Run
		II .	Type CMD and press enter
		III.	Type each of the lines, EXACTLY as they appear
			below.

			net stop dnscache
			sc config dnscache start= disabled

		IV .	Type EXIT to close the CMD window

	Alternatively, you can download a batch file that will disable
	and enable this for you, from the hpHosts download page.

	You can read more detailed information about the DNS Client
	Service at;

	http://www.blackviper.com/WinXP/Services/DNS_Client.htm
	http://www.blackviper.com/WIN2K/win2kservice411.htm#DNS_Client
	http://www.blackviper.com/WinVista/Services/DNS_Client.htm

7. Installation:

	No-install (manual installation):

		Extract HOSTS.TXT to the correct folder for your operating system.

			- Windows XP/2003/Vista

				%systemroot%\system32\Drivers\Etc 

			- Windows NT/2000

				%systemroot%\system32\Drivers\Etc 

			- Windows 95/98/Me

				%windir%

			- Linux

				./etc/

			- Macintosh

				/private/etc/

		Notes:

			%systemroot% is a system variable and will usually be C:\Windows or C:\WinNT

			%windir% is a system variable and will usually be C:\Windows

	Full Install:

		1. Double click hpHosts-Setup-Win32.exe
		2. Run through the steps to install the program
		3. Run the program

8. Installation Notes:

	See System Requirements

9. Uninstallation:

	No-install:

		1. Delete HOSTS file (if ONLY hpHosts installed)
		2. Rename "hosts_Win_Original" to "HOSTS"

	Full Install:

		1. Go to the Add/Remove Programs applet

			- Start > Run, enter:

				appwiz.cpl

		2. Scroll down the list of items until you come to hpHosts
		3. Highlight hpHosts and click Remove

10. Automated Installation:

  	The Setup program accepts optional command line parameters. These can be useful to system administrators,
	and to other programs calling the Setup program.

	/SP

		Disables the This will install... Do you wish to continue? prompt at the beginning of Setup.

	/SILENT
	/VERYSILENT

		Instructs Setup to be silent or very silent. When Setup is silent the wizard and the background
		window are not displayed but the installation progress window is. When a setup is very silent
		this installation progress window is not displayed. Everything else is normal so for example
		error messages during installation are displayed and the startup prompt is (if you haven't
		disabled it with DisableStartupPrompt or the '/SP-' command line option explained above)

		If a restart is necessary and the '/NORESTART' command isn't used (see below) and Setup is silent,
		it will display a Reboot now? message box. If it's very silent it will reboot without asking.

	/LOG

		Causes Setup to create a log file in the user's TEMP directory detailing file installation actions
		taken during the installation process. This can be a helpful debugging aid. For example, if you
		suspect a file isn't being replaced when you believe it should be (or vice versa), the log file
		will tell you if the file was really skipped, and why.

		The log file is created with a unique name based on the current date. (It will not overwrite or
		append to existing files.) Currently, it is not possible to customize the filename.

		The information contained in the log file is technical in nature and therefore not intended to
		be understandable by end users. Nor is it designed to be machine-parseable; the format of the
		file is subject to change without notice.

	/NOCANCEL

		Prevents the user from cancelling during the installation process, by disabling the Cancel button
		and ignoring clicks on the close button. Useful along with /SILENT.

	/NORESTART

		Instructs Setup not to reboot even if it's necessary.

	/LOADINF="filename"

		Instructs Setup to load the settings from the specified file after having checked the command line.
		This file can be prepared using the '/SAVEINF=' command as explained below. Don't forget to use quotes
		if the filename contains spaces.

	/SAVEINF="filename"

		Instructs Setup to save installation settings to the specified file.
		Don't forget to use quotes if the filename contains spaces.

	/DIR="x:\dirname"

		Overrides the default directory name displayed on the Select Destination Location wizard page.
		A fully qualified pathname must be specified.

	/GROUP="folder name"

		Overrides the default folder name displayed on the Select Start Menu Folder wizard page.
		If the [Setup] section directive DisableProgramGroupPage was set to yes, this command line
		parameter is ignored.

	/NOICONS

		Instructs Setup to initially check the Don't create any icons check box on the Select Start Menu
		Folder wizard page.

	/COMPONENTS="comma separated list of component names"

		Overrides the default components settings. Using this command line parameter causes Setup to
		automatically select a custom type.

	* The automated installation notes were taken from the Inno Setup help file

11. Automated Uninstallation

  	The uninstaller program (unins???.exe) accepts optional command line parameters. These can be useful to
	system administrators, and to other programs calling the uninstaller program.

	/SILENT

		When specified, the uninstaller will not ask the user any questions or display a message stating
		that uninstall is complete. Shared files that are no longer in use are deleted automatically without
		prompting. Any critical error messages will still be shown on the screen.

	/NORESTART

		Instructs the uninstaller not to reboot even if it's necessary.

	* The automated uninstallation notes were taken from the Inno Setup help file

12. Alternative hosts file providers

	MVPS - http://mvps.org/winhelp2002/hosts.htm
	Peter - http://pgl.yoyo.org/as/
	Malware Domain List - http://www.malwaredomainlist.com/hostslist/hosts.txt

13. Conditions of Use

	See enclosed EULA.txt
