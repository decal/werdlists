<!DOCTYPE html>
<html><head><title>Test</title>
<script type="text/javascript" charset="utf-8">
//<![CDATA[
function imgSource() {
  var s = "https://img.shields.io/badge/";

  var apath = document.location.pathname;
  var adirs = apath.split("/");
  var awerd = adirs[0];
  var afold = adirs[1];
  var afupc = afold.toUpperCase();
  var awupc = awerd.toUpperCase();
  var unupc = afupc.replace("-", "_");

  s += awupc;
  s += "-";
  s += anupc;
  s += "-";
  s += "GREEN";
  s += ".svg?logo=github&style=popout&longCache=true";

  return s;
}
//]]>
</script>
	</head>
	<body>
		<h1>Test</h1>
<img src="pixel.gif" onLoad='this.src=imgSource();' />
	</body>
</html>

[![werdlists/http-headers](https://img.shields.io/badge/werdlists-http_headers-purple.svg?logo=github&style=popout&longCache=true)](# "werdlists/http-headers")

|&nbsp;&nbsp;&nbsp;&nbsp;_Folder&nbsp;&nbsp;Name_&nbsp;&nbsp;&nbsp;&nbsp;| _Description of Contents_
|:----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------
| [about-http-headers](about-http-headers.txt) |  Descriptions for the most common HTTP header fields 
| [access-control-headers](access-control-headers.txt) |  [Cross Origin Resource Sharing](https://wikipedia.org/wiki/Cross-origin_resource_sharing) (CORS) header name list 
| [amazon-http-headers](amazon-http-headers.txt) |  HTTP headers specific to Amazon 
| [cloudfront-request-headers](cloudfront-request-headers.txt) |  Headers used by [Amazon AWS CloudFront](https://aws.amazon.com/cloudfront/ "CloudFront is a content delivery network offered by Amazon Web Services.") HTTP request 
| [cors-request-headers](cors-request-headers.txt) |  CORS header names used only in HTTP requests 
| [cors-response-headers](cors-response-headers.txt) |  CORS header names used only in HTTP responses 
| [custom-header-names](custom-header-names.txt) |  HTTP request and response header names unspecified in RFC's 
| [custom-request-headers](custom-request-headers.txt) |  non-standard HTTP request headers, i.e. lack RFC specs 
| [custom-response-headers](custom-response-headers.txt) |  non-standard HTTP response headers, i.e. lack RFC specs 
| [envoy-httpconnman-headers](envoy-httpconnman-headers.txt) |  headers used by the [Envoy](https://envoyproxy.io "Envoy is an open source edge and service proxy, designed for cloud-native applications.") HTTP connection manager 
| [http-request-headers](http-request-headers.txt) |  names of all standard HTTP request header fields 
| [http-response-headers](http-response-headers.txt) |  names of all standard HTTP response header fields 
| [iana-headers-list](iana-headers-list.txt) |  A detailed list of message headers specified by IANA 
| [iana-http-headers](iana-http-headers.txt) |  Uniquely Sorted List of IANA Message Headers Assignments 
| [meetup-request-headers](meetup-request-headers.txt) |  HTTP request headers used by the MeetUp.com API 
| [meetup-response-headers](meetup-response-headers.txt) |  HTTP response headers used by the MeetUp.com API 
| [mozdev-docs-headers](mozdev-docs-headers.txt) |  list from left sidebar of [Mozilla Developer Docs HTTP Headers](https://developer.mozilla.org/docs/Web/HTTP/Headers) pages
| [permanent-message-headers](permanent-message-headers.csv) |  [Permanent Message Header Field Names](https://iana.org/assignments/message-headers/perm-headers.csv) 
| [provisional-message-headers](provisional-message-headers.csv) |  [Provisional Message Header Field Names](https://iana.org/assignments/message-headers/prov-headers.csv) 
| [platform-request-headers](platform-request-headers.txt) |  request headers that are specific to certain platforms 
| [platform-response-headers](platform-response-headers.txt) |  response headers particular to certain platforms 
| [rfc-request-headers](rfc-request-headers.txt) |  request header names that appear in an IETF RFC document 
| [rfc-response-headers](rfc-response-headers.txt) |  response header names that appear in an IETF RFC document 
| [security-policy-headers](security-policy-headers.txt) |  [Content Security Policy](https://wikipedia.org/wiki/Content_Security_Policy) (CSP) header name list 
| [ssrf-headers-addr](ssrf-headers-addr.txt) | [Server-Side Request Forgery](https://www.owasp.org/index.php/Server_Side_Request_Forgery) (SSRF) request header names ending with the substring `-Addr`
| [ssrf-headers-address](ssrf-headers-address.txt) | SSRF request header names ending with the substring `-Address`
| [ssrf-headers-all](ssrf-headers-all.txt) | All of the SSRF request header names files' contents combined subsequent to unique sorting
| [ssrf-headers-dns](ssrf-headers-dns.txt) | SSRF request header names ending with the substring `-DNS`
| [ssrf-headers-host](ssrf-headers-host.txt) | SSRF request header names ending with the substring `-Host`
| [ssrf-headers-ip](ssrf-headers-ip.txt) | SSRF request header names ending with the substring `-IP`
| [ssrf-headers-server](ssrf-headers-server.txt) | SSRF request header names ending with the substring `-Server`
| [ssrf-headers-vanilla](ssrf-headers-vanilla.txt) | SSRF request header names without any specific appendage
| [ssrf-request-headers](ssrf-request-headers.txt) |  request headers that can be used in SSRF attacks 
| [ssrf-response-headers](ssrf-response-headers.txt) |  response headers host names for SSRF can be parsed from 
| [tusio-http-headers](tusio-http-headers.txt) |  headers used by resumable file transfer protocol, see [tus.io](https://tus.io "Open Protocol for Resumable File Uploads") 

* * *

