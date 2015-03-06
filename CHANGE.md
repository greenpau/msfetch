##v0.1 

- [x] First public release

## v0.2 

- [x] Speeds e-mail downloads. Addresses issue with duplicate e-mail IDs Microsoft Exchange Q320749

## v0.3

- [x] Added support for separate mbox file for "Sent Items" (outbound mail)

## v0.4 

- [x] Added 2 new authentication methods. "Windows Basic", "OWA Web Forms 2007".

- [x] Previously only "OWA Web Forms" were available.

- [x] Added ability to specify MS Exchange ports using "MAILPORT" variable.

- [x] Added ability to specify MS Exchange web protocol  (HTTP/HTTPS) using "MAILPROT" variable.

- [x] Added module checks, so it will be easier to identify modules that are not installed.

## v0.5

- [x] Enhanced debugging. Failed URLs are recorded to `.msfetch.history.error`

- [x] Added `MAILUSERDAV` variable. Some users might have username different from their WebDAV path.
For example, user's full name is "Buck Deviney", his login is `devinbuc`, but web dav path is `buck.deviney`.

- [x] Many users will be able to login, but will be unable to fetch mail. To resolve this issue, assign: 
`MAILUSER=devinbuc` and `MAILUSERDAV=buck.deviney` accordingly.

- [x] Added "debug" and "password" switch

- [x] Added help menu

