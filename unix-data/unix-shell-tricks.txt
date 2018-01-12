I have marked with a * those which I think are absolutely essential
Items for each section are sorted by oldest to newest. Come back soon for more!

BASH
* In bash, 'ctrl-r' searches your command history as you type
- Input from the commandline as if it were a file by replacing 
  'command < file.in' with 'command <<< "some input text"'
- '^' is a sed-like operator to replace chars from last command 
  'ls docs; ^docs^web^' is equal to 'ls web'. The second argument can be empty.
* '!!:n' selects the nth argument of the last command, and '!$' the last arg
  'ls file1 file2 file3; cat !!:1-2' shows all files and cats only 1 and 2
- More in-line substitutions: http://tiny.cc/ecv0cw http://tiny.cc/8zbltw
- 'nohup ./long_script &' to leave stuff in background even if you logout
- 'cd -' change to the previous directory you were working on
- 'ctrl-x ctrl-e' opens an editor to work with long or complex command lines
* Use traps for cleaning up bash scripts on exit http://tiny.cc/traps
* 'shopt -s cdspell' automatically fixes your 'cd folder' spelling mistakes
* Add 'set editing-mode vi' in your ~/.inputrc to use the vi keybindings 
  for bash and all readline-enabled applications (python, mysql, etc)


PSEUDO ALIASES FOR COMMONLY USED LONG COMMANDS
- function lt() { ls -ltrsa "$@" | tail; }
- function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
- function fname() { find . -iname "*$@*"; }
- function remove_lines_from() { grep -F -x -v -f $2 $1; }
  removes lines from $1 if they appear in $2
- alias pp="ps axuf | pager"
- alias sum="xargs | tr ' ' '+' | bc" ## Usage: echo 1 2 3 | sum
- function mcd() { mkdir $1 && cd $1; }


VIM
- ':set spell' activates vim spellchecker. Use ']s' and '[s' to move between
  mistakes, 'zg' adds to the dictionary, 'z=' suggests correctly spelled words
- check my .vimrc http://tiny.cc/qxzktw and here http://tiny.cc/kzzktw for more


TOOLS
* 'htop' instead of 'top'
- 'ranger' is a nice console file manager for vi fans
- Use 'apt-file' to see which package provides that file you're missing
- 'dict' is a commandline dictionary
- Learn to use 'find' and 'locate' to look for files
- Compile your own version of 'screen' from the git sources. Most versions
  have a slow scrolling on a vertical split or even no vertical split at all
* 'trash-cli' sends files to the trash instead of deleting them forever. 
  Be very careful with 'rm' or maybe make a wrapper to avoid deleting '*' by
  accident (e.g. you want to type 'rm tmp*' but type 'rm tmp *')
- 'file' gives information about a file, as image dimensions or text encoding
- 'sort | uniq' to check for duplicate lines
- 'echo start_backup.sh | at midnight' starts a command at the specified time
- Pipe any command over 'column -t' to nicely align the columns
* Google 'magic sysrq' to bring a Linux machine back from the dead
- 'diff --side-by-side fileA.txt fileB.txt | pager' to see a nice diff
* 'j.py' http://tiny.cc/62qjow remembers your most used folders and is an 
  incredible substitute to browse directories by name instead of 'cd' 
- 'dropbox_uploader.sh' http://tiny.cc/o2qjow is a fantastic solution to 
  upload by commandline via Dropbox's API if you can't use the official client
- learn to use 'pushd' to save time navigating folders (j.py is better though)
- if you liked the 'psgrep' alias, check 'pgrep' as it is far more powerful
* never run 'chmod o+x * -R', capitalize the X to avoid executable files. If
  you want _only_ executable folders: 'find . -type d -exec chmod g+x {} \;'
- 'xargs' gets its input from a pipe and runs some command for each argument
* run jobs in parallel easily: 'ls *.png | parallel -j4 convert {} {.}.jpg'
- grep has a '-c' switch that counts occurences. Don't pipe grep to 'wc -l'.


NETWORKING
- Don't know where to start? SMB is usually better than NFS for most cases.
- If you use 'sshfs_mount' and suffer from disconnects, use 
  '-o reconnect,workaround=truncate:rename'
- 'python -m SimpleHTTPServer 8080' or 'python3 -mhttp.server localhost 8080'
  shares all the files in the current folder over HTTP. 
- 'ssh -R 12345:localhost:22 server.com "sleep 1000; exit"' forwards 
  server.com's port 12345 to your local ssh port, even if you machine 
  is not externally visible on the net. 
  Now you can 'ssh localhost -p 12345' from server.com and you will 
  log into your machine. 
  'sleep' avoids getting kicked out from server.com for inactivity
* Read on 'ssh-agent' to strenghten your ssh connections using private keys, 
  while avoiding typing passwords every time you ssh.
- 'socat TCP4-LISTEN:1234,fork TCP4:192.168.1.1:22' forwards your port
  1234 to another machine's port 22. Very useful for quick NAT redirection.
- Some tools to monitor network connections and bandwith:
  'lsof -i' monitors network connections in real time
  'iftop' shows bandwith usage per *connection*
  'nethogs' shows the bandwith usage per *process*
* Use this trick on .ssh/config to directly access 'host2' which is on a private 
  network, and must be accessed by ssh-ing into 'host1' first
  Host host2
      ProxyCommand ssh -T host1 'nc %h %p'
  	  HostName host2
* Pipe a compressed file over ssh to avoid creating large temporary .tgz files
  'tar cz folder/ | ssh server "tar xz"' or even better, use 'rsync'
* ssmtp can use a Gmail account as SMTP and send emails from the command line.
  'echo "Hello, User!" | mail user@domain.com' ## Thanks to Adam Ziaja.
  Configure your /etc/ssmtp/ssmtp.conf:
      root=***E-MAIL***
      mailhub=smtp.gmail.com:587
      rewriteDomain=
      hostname=smtp.gmail.com:587
      UseSTARTTLS=YES
      UseTLS=YES
      AuthUser=***E-MAIL***
      AuthPass=***PASSWORD***
      AuthMethod=LOGIN
      FromLineOverride=YES

                                     -~-

(CC) by-nc, Carlos Fenollosa <carlos.fenollosa@gmail.com>
Retrieved from http://cfenollosa.com/misc/tricks.txt
Last modified: Fri Feb 28 07:18:39 CET 2014
