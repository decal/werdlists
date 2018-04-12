.. title: Vim Tips
.. slug: vim
.. date: 2017-07-24 06:02:48 UTC+10:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text

Commands in this document are typed as they would appear in your
.vimrc (Vim configuration file). To enter them as commands in an
active Vim session prefix them with a colon. For example:

Interactive::

   :set cindent

.vimrc::

   set cindent


How can I use arrows and backspace in insert mode?
--------------------------------------------------

Add to .vimrc::

   set nocompatible
   set bs=2


How can I comment out a visual block of text?
---------------------------------------------

This technique inserts any characters at the start of each
line in a visual block, so it can be used for more than just bulk
commenting.

First, select the block you want to add a character to (with CTRL-V -
it must be a block, visual line with shift-v will not work). Then
press shift-i (i.e. capital I), type the character(s) you want inserted
to the left of each block line (e.g. a # for commenting) and then
press escape.

This might appear to only work on one line at first, but after escape
is pressed the characters will be inserted in the other lines of the
block.

Matching brackets and braces
----------------------------

When the cursor is over one of a pair of parentheses, square brackets
or braces, press % to move quickly to the other. You can also use the
% key as a destination argument to many vi commands (e.g. d% will
% delete everything between a pair of braces, including the braces).

``:set showmatch:`` will briefly highlight a matching
brace/parenthesis/square bracket when you type it's partner.

Automatic indenting, Smart Indenting and C-indenting
----------------------------------------------------

You can turn "dumb" automatic indenting on with ``set ai`` (or
``autoindent``) and off with ``set noai`` (or ``noautoindent``). This
just starts a new line at an indent equal to the current one.

You can enable smart indenting with ``set si`` - amongst other
things this will automatically adjust indenting for braces and push
hash comments to the first column. This second feature can be undesirable
but is easily disabled using ``:inoremap # X^H#`` (use ctrl-v ctrl-h
to enter the ^H).

Vim also has a "cindent" mode that is very useful for c-like code and
is highly configurable - see the help file indent.txt for details. You
can try it out with ``set cindent``.

Auto-indenting and X Pasting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Automatic indenting makes X copy-and-paste untenable (try it and see!)
so it's useful to have a key which will enable/disable it for pasting.
You can set this with pastetoggle - ``set pastetoggle=&lt;F11&gt;``.

Alternatively, enter the command ``:a`` (ex-style append), paste your
text and press ctrl-C. This will enter text unmodified by any
indenting abbreviation or similar commands. (Thanks to Emil for this
tip).

If you want to reindent a chunk of text (e.g. you've just pasted in
some code without pastetoggle) select it with v (visual mode) and press
``=``. (Thanks to Saied for this tip).

Abbreviations
-------------

Use ``ab [abbreviation] [expansion]`` to define an abbreviation,
where ``[abbreviation]`` is a single word (it can expand to many words).

Typing in the abbreviation followed by a space will make vim
automatically expand the text. For example::

   ab uns unsigned short

   ab Pof Product.objects.filter(

Highlighing trailing whitespace and tabs
----------------------------------------

It's useful to highlight "trailing" whitespace - spaces and tabs at the end
of the line. These don't display anything but can mess up automatic wrapping,
diffs (and version control), etc. The following commands, thanks to
Emil, will display trailing whitespace in dark grey::

   set list listchars=trail:.
   highlight SpecialKey ctermfg=DarkGray

You can also display tabs (so you can differentiate them from spaces)
and other character classes::

   set list listchars=tab:\|_,trail:.

Mapping a filter command to a key
---------------------------------

You can easily set up a key to automatically pipe the editor contents
through a command::

   map x :%!somecommand -arg1 -arg2&lt;CR&gt;

The ``&lt;CR&gt;`` simulates a carriage return keypress (otherwise the
mapping would just print the command on the : line). This is useful for rot13
scripts and pseudorandom signatures.

Modelines - including vim settings in an edited file
----------------------------------------------------

A modeline is a line close to the beginning or end of a file which
contains vim settings. When the file is opened for editing vim will
read the modeline and use the given settings.  Modelines take one of two
forms, without set::

   vim: shiftwidth=3 tabstop=3 expandtab

With set and a trailing colon::

   vim: set shiftwidth=3 tabstop=3 expandtab:

You can place the modelines inside a comment but they need whitespace
before and after or they will not function. Modelines at the beginning
of a line will be ignored in some circumstances - try indenting them
slightly.

File type dependent settings
----------------------------

The simple way to do this is to use an autocommand with the file
extension::

   au BufRead,BufNewFile *.c     set tabstop=3 | set shiftwidth=3

Another way is using the builtin Vim filetype detection. This requires the
filetype plugin installed, but has the advantage that it can detect files
based on their contents as well as the extension - and doesn't require you to
write your own detection rules. Setting the same values as above::

   au BufRead,BufNewFile *    if &ft == 'c' | set ts=3 | set sw=3 | endif

The 'c' filetype is autodetected by the filetype plugin which sets the
filetype/ft variable to 'c'. Check "filetype.vim" on your system to
see which filetypes are available.

