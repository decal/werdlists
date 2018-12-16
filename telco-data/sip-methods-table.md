|Request name|Description|Notes|RFC references|
|--- |--- |--- |--- |
|INVITE|The invite message initiates a SIP dialog with the intent to establish a call. It is sent by a user agent client to a user agent server.|When sent during an established dialog (reinvite) it modifies the sessions, for example placing a call on hold.|RFC 3261|
|ACK|Confirm that an entity has received a final response to an INVITE request.||RFC 3261|
|BYE|This method signals termination of a dialog and ends a call.|This message may be sent by either endpoint of a dialog.|RFC 3261|
|CANCEL|Cancel any pending request.|Usually means terminating a SIP call while it is still ringing, before answer.|RFC 3261|
|OPTIONS|Query the capabilities of an endpoint.|It is often used[how?] for  keepalive purposes.[citation needed]|RFC 3261|
|REGISTER|Register the SIP URI listed in the To header field with a location server and associates it with the network address given in a Contact header field.|It implements a location service.[how?]|RFC 3261|
|PRACK|Provisional acknowledgement.|PRACK is sent in response to provisional response (1xx).|RFC 3262|
|SUBSCRIBE|Initiates a subscription for notification of events from a notifier.||RFC 6665|
|NOTIFY|Inform a subscriber of notifications of a new event.||RFC 6665|
|PUBLISH|Publish an event to a notification server.||RFC 3903|
|INFO|Send mid-session information that does not modify the session state.|This method is often used for DTMF relay.|RFC 6086|
|REFER|Ask recipient to issue SIP request for the purpose of call transfer.||RFC 3515|
|MESSAGE|Transport text messages.||RFC 3428|
|UPDATE|Modifies the state of a session without changing the state of the dialog.||RFC 3311|
