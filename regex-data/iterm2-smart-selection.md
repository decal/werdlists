# Word bounded by whitespace
\S+
# C++ namespace::identifier
([a-zA-Z0-9_]+::)+[a-zA-Z0-9_]+
# Paths
\~?/?([[:letter:][:number:]._-]+/+)+[[:letter:][:number:]._-]+/?
# Quoted string
@?"(?:[^"\\]|\\.)*"
# Java/Python include paths
([[:letter:][:number:]._]+\.)+[[:letter:][:number:]._]+
# mailto URL
\bmailto:([a-z0-9A-Z_]+@)?([a-zA-Z0-9\-]+\.)*[a-zA-Z0-9\-]+\b
# Obj-C selector
@selector\([^)]+\)
# email address
\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b
# HTTP URL
https?://([a-z0-9A-Z]+(:[a-zA-Z0-9]+)?@)?([a-z0-9A-Z][-a-z0-9A-Z]*\.)+[A-Za-z][-A-Za-z]*((:[0-9]+)?)(/[a-zA-Z0-9;/\.\-_+%?&@=#\(\)~]*)?
# SSH URL
\bssh:([a-z0-9A-Z_]+@)?([a-zA-Z0-9\-]+\.)*[a-zA-Z0-9\-]+\b
# Telnet URL

