# Recon and Analysis
* Map visible content
* Discover hidden and default content
* Test for debug parameters
* Identify the technologies used
* Map the attack surface
# Test Handling of Access
## Authentication
- Test password quality rules
- Test for username enumeration
- Test resilience to password guessing
- Test any account recovery function
- Test any remember me function
- Test any impersonation function
- Test username uniqueness
- Check for unsafe distribution of credentials
- Test for fail-open conditions
- Test any multi-stage mechanisms
## Session Handling
- Test tokens for meaning
- Test tokens for predictability
- Check for insecure transmission of tokens
- Check for disclosure of tokens in logs
- Check mapping of tokens to sessions
- Check session termination
- Check for session fixation
- Check for cross-site request forgery
- Test for fail-open conditions
- Check cookie scope
## Access Controls
- Understand the access control requirements
- Test effectiveness of controls, using multiple accounts if possible
- Test for insecure access control methods (request parameters, Referer header, etc)
# Test the Handling of Input
* Fuzz all request parameters
* Test for SQL injection
* Identify all reflected data
- Test for reflected XSS
- Test for HTTP header injection
- Test for arbitrary redirection
- Test for stored attacks
* Test for OS command injection
* Test for path traversal
* Test for script injection
* Test for file inclusion
* Test for SMTP injection
* Test for native software flaws (buffer overflow, integer bugs, format strings)
* Test for SOAP injection
* Test for LDAP injection
* Test for XPath injection
# Test Application Logic
* Identify the logic attack surface
* Test transmission of data by the client
* Test for reliance on client-side input validation
* Test any thick-client components (Java, ActiveX, Flash)
* Test multi-stage processes for logic flaws
* Test handling of incomplete input
* Test trust boundaries
* Test transaction logic
# Assess Application Hosting
* Test segregation in shared infrastructures
* Test segregation between ASP-hosted applications
* Test for web server vulnerabilities
- Default credentials
- Default content
- Proxy functionality
- Virtual hosting mis-configuration
- Bugs in web server software
# Miscellaneous Tests
* Check for DOM-based attacks
* Check for frame injection
* Check for local privacy vulnerabilities
- Persistent cookies
- Caching
- Sensitive data in URL parameters
- Forms with autocomplete enabled
* Follow up any information leakage
* Check for weak SSL ciphers
