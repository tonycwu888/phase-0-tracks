
<h2> Common HTTP status codes </h2>
*********  200 OK  
The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:
GET an entity corresponding to the requested resource is sent in the response;
HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
POST an entity describing or containing the result of the action;
TRACE an entity containing the request message as received by the end server.


*********  404 Not Found

The most common error code you run into is a 404 error. The 404 status code means the requested resource is no longer available or, more specifically, just not found. Was it ever available there? You don’t know. You do know it isn’t available there now.

What are some of the reasons for a 404 error? Typos are a common reason for getting a 404 error. A missing or extra letter in a typed-in url, or a wrong domain name can often result in a 404 error. Another reason for 404 errors isn’t typos; it is the aging of the web. When someone writes an article or blog, that person might link to a secondary source to provide additional information for the article. Now imagine revisiting said article six months or six years later. If what was linked to is no longer on the web, a 404 error will be generated when you click on the link in the browser.

*********  403 Forbidden

Another common client-side response status code is 403. Getting a 403 status code back from an HTTP request means access to the resource is forbidden. This is not an authentication problem; those are 401 (unauthorized) errors. One common reason for 403 errors is the server maintaining a whitelist of machines that can access that system and the user’s machine not being on it. If the client’s certificate is no longer valid (or is just plain missing), that’s another reason for a 403 error response. There typically is no recovery from these, short of trying from a different machine. Finally, there’s also the possibility of wrong permissions associated to files. Often in Linux and sometimes in Windows, a webserver will not have access to website files because of faulty permissions. This will also result in a 403 error. The server owner will need to change the file permissions to fix this.

*********  500 Internal Server Error

Moving over to the server-side error codes, the 500 error is the catchall. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned. Typically, you can retry the request attempt again and possibly get a different response. Of course, retrying attempts that involved a shopping cart that resulted in a 500 error could result in a duplicate order, so tread carefully there.

*********  503 Service Unavailable

Like many of the 500-level error codes, the 503 (service unavailable) status code could be a temporary problem. It basically means the web server isn’t available. Why? You don’t know. Perhaps the web server just restarted and is in the middle of initialization. Perhaps it is overloaded and can’t handle any more concurrent requests. Or perhaps it is just down for maintenance. Retrying the request could work or could return another 5xx error.

*********  504 Gateway Timeout

The final of the top five error codes is the 504 status, indicating a gateway timeout. The name says it all. A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out. There could be a DNS issue, a network device might be down, or the other machine could just be overly busy and unable to process the request in a timely fashion. This can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable. As with the other 5xx-level errors, just retrying the request could result in a successful response.

<h2> Difference between GET request and POST request </h2>
It seems like the GET is less secure and more restrictions.  Data length, Ascii restrictions and easier hacked than a POST request.  All data is visible on the URL so anyone can see it.  The only major advantage of the GET post is that you can be booked marked and is save in the cache for easier load.

The POST request on the other hand is more secure and usually used for passing password.  Use multipart encoding for binary data.  It's more difficult to hack.  There's no restrictions on form data or data length.  Information can not be cached or saved in the bookmark.

<h2>HTTP Cookies</h2>
Cookie is a small piece of data that a server sends to the user's web browser that may be stored and send back with the next request.  Cookies are used for 3 purposes: Session management, personalization, and tracking user behavior.

To create cookies, the "Set-Cookie" HTTP response header is used to send cookie from server to the user agent.  Syntax is:  

Set-Cookie: (cookie-name) = (cookie-value)

***Example of entry for simple cookie***

HTTP/1.0 200 OK
Content-type: text/html
Set-Cookie: yummy_cookie=choco
Set-Cookie: tasty_cookie=strawberry

Permanent cookies can be set with an expiration date or for a specific length of time
