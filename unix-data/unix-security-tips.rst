.. title: Unix Security Tips
.. slug: unix-security
.. date: 2017-08-07 22:08:10 UTC+10:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text

This is written mainly for Unix gurus who are not necessarily security
experts. It will probably be too advanced for non-unixy-people.

This document assumes you already know some basic sysadmin/security
terms (like firewall, proxy, IDS, SSH, SSL, daemon, service etc) and
assumes you are capable of reading manpages and other documentation
and configuring such software yourself.

Obvious things
--------------

- Keep regular backups in multiple places so you can recover your
  data in the worst case scenario (everything gets
  compromised/trashed).
- Change the default passwords on everything - any device, daemon
  etc which has a default password should be changed.
- Don't run servers/services you don't need to.
- Don't publish or make publicly available any details of your
  network (such as machine names and what services they run) any more
  than necessary.
- Don't run unencrypted services which take passwords (telnet, ftp, etc).
- Don't install or run anything from untrusted sources. This
  includes many games and mods, unfortunately.
- Don't do your everyday stuff from an admin account - only use
  admin accounts for admin tasks.

Web Security
------------

- Cross-site attacks shouldn't be the user's job to prevent, but they
  can be avoided by not browsing random forums and other sites while
  also logged into critical ones.
- Use a seperate browser "profile" for sites which you want to keep
  private from the others (e.g. Facebook), and when browsing
  security-critical sites (like your bank website or server hosting
  "control panels"). Not all browsers support profiles.
- For very-security-critical sites (like banking), use a completely
  seperate user account or possibly a seperate machine. Its best not to
  use the same computer to do your banking as you do to browse 4chan.

General system tips
-------------------

(per-system stuff; see below for networks and services/daemons)

These tips are good practice and don't make anything significantly
more difficult for users or admins. Many are fairly obvious too. See
"Hardening" below for more restrictive security measures for
when you want to really need to trade some convenience for security.

- Automating your backups (with tools like AMANDA, Duplicity, Bakula or PCBackup)
  will save time and will ensure they really are done regularly.
- Always use SSH keys rather than passwords. SSH password sniffing
  attacks are very common. You can use the SSH Agent to keep credentials
  so you don't have to type it in every time you commit or copy
  something.

   - Passwords can be disabled on the server using "PasswordAuthentication no" in the OpenSSH config.

- Disable version 1 of SSH (only use version 2) and all versions of
  SSL (only use TLS 1.2) as the old versions of these protocols have
  exploitable flaws. Setting is "Protocol 2" in the OpenSSH client and server
  config.
- Keep a seperate account with normal-user access for normal user
  tasks and a administrator account with sudo access for admin tasks.
  If physical access is convenient, consider not letting the admin user log in
  except at the console.
- Run seperate commands through sudo rather than "sudo -i" or "sudo
  su" - this provides more logging/auditing of the commands.
- Make use of the many programs which hash system binaries and
  regularly checks them (such as tripwire or debsums). This only has to
  be set up once and there is little maintenance work.

   - Run these sort of integrity checking IDS programs on your jails - this will tell you when system files have been modified in a jail (i.e. the virtual server of the jail has been cracked/rootkitted)

- Occasionally boot to a LiveCD with malware and rootkit scanners to
  and audit each system (using a livecd means they will have a
  (mostly) clean environment - if you ran these scanners from the
  installed OS then any rootkits on that OS could easily hide from the
  scanner)
- Make liberal use of the "noexec" flag for filesystems. Don't let
  binaries run where you don't need to (e.g. user directories,
  tmp, var, removable media...).
- If your OS supports "append-only" flags, use them on logs to
  prevent them being altered without a kernel-level compromise.


Hardening a machine
-------------------

These tips improve security but significantly affect usability or are
high-effort:

Read only Binaries
~~~~~~~~~~~~~~~~~~

Preventing writing to system binaries helps prevent some rootkits being
installed, although it makes updates more difficult as you will need
to reboot when updating.

- Just using file permissions won't work as root can override them.
- If your system has immutable flags (like FreeBSD), make use
  of them on critical system binaries. You may need to up the
  securelevel before they take effect.
- Another possiblity is putting system binaries on a read-only
  mount, and/or a network mount.

Kernel Stuff
~~~~~~~~~~~~

- After a kernel install, make a dump of the kernel syscall table and regularly check it for changes.  Kernel rootkits will often change this table (of course, a well designed rootkit will intercept these checks).
- Disable kernel modules (this will mean compiling everything you
  will need into the kernel) - they are a common entry point for
  kernel-level rootkits.
- Build a custom kernel without anything you don't need for this
  system - by removing unnecessary stuff you reduce the attack surface,
  and it is harder to use many exploits on a custom build.


Misc
~~~~

- Use seperate accounts for seperate roles. Administrator and
  user seperation is obvious, but consider also an admin who works on
  two sets of servers, or a forensic investigator working on two cases.
  Seperate accounts with the credentials to access only the things you
  need to for that task minimises the damage if an account is
  compromised.
- For systems you don't need to log into remotely, consider
  disabling SSH in case there is an sshd exploit which could otherwise
  affect all machines. Obviously this is impossibly inconvenient for
  many devices, but on some machines it might have little effect and
  provides a little less attack surface.

Using untrusted Systems
-----------------------

Just don't. Never use a untrusted system to log into anything remotely (pun
intended) important.

There is no way to prevent recording your key or password (see: "Hostile Host Problem")

This includes friends computers, unless they are also a properly
paranoid CS graduate.


Using untrusted Networks
------------------------

E.g. public wifi, hotel/convention networks etc.

- Remember the Internet itself is an untrusted network.
- Make sure you already have the public versions of keys/certificates
  you may need to connect to your SSH/VPN. Download these from your
  trusted network first.

Servers and Services
--------------------

- **Never SSH to one server from another** - SSH trojans are
  becoming much more common and are a frequent way to go from one box
  compromised to all boxes compromised. Connect via a machine
  which has no SSH daemon of its own.
- Wherever possible, use physically seperate servers for different
  services. If not economically possible, consider virtualisation and
  the below section on Cheap Security.
- Put services in (FreeBSD) jails or (Solaris) Zones, or the
  equivalent for other platforms. Working in and updating jails can look
  like a pain from the handbook but there are many tools in FreeBSD
  ports to automate jails (``ezjail`` in particular) and minimise the
  maintenance overhead. Jails make it **much harder** to leverage a
  daemon explioit into rooting the system.
- Services which are accessed from outside but should be provided
  only to authorized users (such as SSH, IMAP, administrative/author
  sites etc) **should not be directly accessible via the public
  internet**. Put them on a VPN.
- If a VPN is unusable for some reason, consider Port Knocking.

Local Network
-------------

- Have a dedicated, hardened log machine for syslog and audit logs.
  This machine should preferably not be logged into remotely (no open
  ports apart from the logging daemons). This can be incredibly useful
  for detecting an intrusion and determining how bad it is.
- Wherever possible, use physically or virtually seperate servers for
  different services, and keep the ones that don't need to talk to each other on
  seperate (V)LANs, firewalled apart.
- Do make use of a dedicated intrustion detection system on the
  network (such as Snort) - it a bit of a hassle to set up once but
  little effort to maintain once set up.
- Use a VPN for services which are only for some users, don't allow
  public access to them.

Cheap Security: When you can't afford lots of separate systems
--------------------------------------------------------------
For a home or SOHO network, where you cant afford
dedicated servers and hardware.

- Make sure you still have offline (removable media) and offsite
  backups in some way. Online backups are good but can be tampered with
  if the device is compromised.
- If at all possible, use a seperate, hardened machine for logging,
  even if it is an old desktop or laptop or something.
- Next priority if you can spare a seperate server is an instrusion
  detection box, then a seperate, hardened online backup box.
- Make use of Virtualisation/Jails/Zones to have virtually seperate
  servers if you can't afford physically seperate ones. 
- Even if your network is small and you may only have a few users
  and a few servers, it is essential to always have a seperate user
  and server LAN with the vulnerable user LAN seperately firewalled
  from the critical server LAN.

Hosts on your network you don't manage
--------------------------------------

E.g. office laptops or the roommates with Windows/Mac systems.

- Consider these hosts potentially just as hostile as the internet
  and treat the network they are on accordingly.
- Always keep all "user" devices on a seperate LAN from servers and
  other infrastructure.
- Put an IDS on that user LAN. At an absolute minimum, a firewall
  which blocks outgoing traffic except any required ports and sends
  you a warning on common worm-related ports. A real IDS like Snort is
  much better.
- Preferably block all traffic except proxied traffic which is tightly
  controlled (e.g. port 80).
- If they are using your servers as a file store, consider running
  an antivirus (like ClamAV) on that storage regularly to detect anything
  infectious users download. This can be better than an antivirus on
  their system which may be easily compromised.
- Provide an easy way for users to backup their devices so if they
  do infect their machine you can easily recover their critical files.
  (Otherwise, they may insist on using a compromized device without an
  alternative).
