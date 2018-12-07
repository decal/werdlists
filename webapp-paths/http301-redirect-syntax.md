# 301 Redirects 

> "I recommend that you always 301 redirect any url if you remove that page to
> make sure that you never lose any link power. If you moved the page then you
> should redirect the old url to the new location. If you removed the page 
> completely then it is usually best to redirect the URL to index or to the
> main page in the relevant section.  Doing this can dramatically improve your
> rankings." 

<http://www.collylogic.com/301-redirects/>

## Apache httpd mod_rewrite .htaccess configure sub-domain "www" for new host
```apache
Options +FollowSymlinks
RewriteEngine on
rewritecond %{http_host} ^domain.com [nc]
rewriterule ^(.*)$ http://www.domain.com/$1 [r=301,nc]
```

## Apache httpd mod_rewrite .htaccess setup entirely new second-level domain name
```apache
Options +FollowSymLinks
RewriteEngine on
RewriteRule (.*) http://www.newdomain.com/$1 [R=301,L]
```

## PHP Redirect
```php
<?
Header( "HTTP/1.1 301 Moved Permanently" );
Header( "Location: http://www.host.dom" );
?>
```

## JSP (Java) Redirect
```java
<%
response.setStatus(301); response.setHeader( "Location", "http://www.host.dom/" ); response.setHeader( "Connection", "close" ); %>
```

## Classic ASP Redirect
```asp
<%@ Language=VBScript %>
<%
Response.Status="301 Moved Permanently"
Response.AddHeader "Location","http://www.host.dom/"
%>
```

## ASP.NET Redirect
```asp.net
<script runat="server">
private void Page_Load(object sender, System.EventArgs e)
{
Response.Status = "301 Moved Permanently";
Response.AddHeader("Location","http://www.host.dom");
}
</script>
```

## ColdFusion Redirect
```coldfusion
<.cfheader statuscode="301" statustext="Moved permanently">
<.cfheader name="Location" value="http://www.host.dom">
```

## Ruby on Rails Redirect
```ruby def old_action
headers["Status"] = "301 Moved Permanently"
redirect_to "http://www.host.dom/"
end
```

## Perl CGI Redirect
```perl 
$q = new CGI;
print $q->redirect("http://www.host.dom/");
```
