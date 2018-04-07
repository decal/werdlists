.. title: General Unix Tips
.. slug: unix-tips
.. date: 2017-07-26 09:50:08 UTC+10:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text

Some of these might differ depdnding on GNU/BSD option syntax and so
on.

Finding the disk space used in the last x days
----------------------------------------------

How much disk space is taken up by the files in my home directory
changed in the last day? (useful for backup calculations)::

   find ~ -mtime -1 -printf '%k\n' | awk '{ sum+=$1 } END { print sum }'

- ``-mtime -1`` matches files with modification time in the last 1 day;
- ``-printf '%k\n'`` prints the file size in KB on a line;
- The awk script simply sums all the lines.

Increase the negative value for mode days, e.g. for 1 month::

   find ~ -mtime -31 -printf '%k %p\n' | grep -vi cache | awk '{ sum+=$1 } END { print sum }

This uses GNU find syntax; BSD find syntax may be different.


Archiving files selected with find
----------------------------------

Similar to the above example, this archives all files which have a
modification time in the last 180 days::


   find ~ -type f -mtime -180 -print0 | bsdtar cvjf last180days.tbz --null -T -

The ``-T -`` option to bsdtar causes the list of files to be archived to
be read from standard input. The ``-type f`` causes files only to be
added to the list (otherwise find will pass on directories, and tar
will archive everything under the directory - even duplicates...)

Note the use of ``-print0`` on find and the matching ``--null`` on bsdtar:
these use null characters to seperate file names instead of white
space, which means that file names in the list with white space or
special characters (even newlines or glob characters like ``*/./?``) will
not break things.

Excluding a path in find
------------------------

Select the path with the ``-path`` predicate and exclude it with the
``-prune`` action. This also requires you to use a boolean or with the
non-prune action you want to do; for example, to print the files
in ../foo/bar except ../foo/bar/cache::

   find ../foo/bar -path ../foo/bar/cache -prune -o -print

(On some versions of find, it will assume -print if the only action
is -prune)

Note that the prune path is matched against the start of the path
string, so it must be specified in the same way (both absolute, or
both using the same relative directory).

Also, if you are specifying other matching criteria, use parentheses
to make sure the order of operations is kept. Inside a shell (i.e.
nearly all the time) you must escape the parentheses (``\( \)``).

Neatly printing the modification time of a file
-----------------------------------------------

::

   echo foo was last modified on `stat /path/to/foo | awk '/Modify/ { print $2 }'`

Often useful to go together with a script run occasionally - if the
script doesn't modify anything itself you can ``touch`` a file and use
the modification time to show the user the time since the last run::

   echo Last ran foo on `stat $HOME/.var/foo | awk '/Modify/ { print $2 }'`
   ...
   touch $HOME/.var/foo

