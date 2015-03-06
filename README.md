Introduction
============

`msfetch` tool retrieves e-mails from MS Exchange (2000/2003/2007)
mailboxes and saves them in .mbox format file. `msfetch` tool was
written in Perl and it communicates to MS Exchange via webDAV protocol.
By default, webDAV protocol is enabled when Outlook Web Accees (OWA) had
been enabled.

### Tested on

`msfetch` was created and tested in the following environment:

-   Fedora 11 - 2.6.29.6-213.fc11.i586
-   Perl v5.10.0 built for i386-linux-thread-multi
-   Mutt 1.5.19 (2009-01-05)

Please, feel free to e-mail me your system parameters, so I can add them
to the list of "tested" platforms.

Acknowledgments
---------------

-   Thanks to [fetchExc](http://www.saunalahti.fi/juhrauti/index.html)
    for general direction
-   Thanks to [Larry Wall](http://www.perl.org/) for Perl
-   Thanks to [CPAN](http://www.cpan.org/) for Perl Archive Network
    resources and modules
-   Thanks to [Mutt creators and users](http://www.mutt.org/) for the
    best console e-mail client

Installation
============

Downloads
---------

Please use the below links to download version 0.5 of `msfetch`:

-   [msfetch.tar.gz]()
-   [MD5 Hash]()

The `msfetch.tar.gz` package contains the following files:

-   `msfetch` - application executables
-   `.msfetchrc` - sample configuration file

msFetch 0.5 Installation
------------------------

Follow the below procedure to install `msfetch`:

~~~~ {.prettyprint .lang-bash}
cd $HOME
wget msfetch.tar.gz
tar xvzf msfetch.tar.gz
cd msfetch.0.5/
make
cd ..
./msfetch
~~~~

Enclosed sample configuration file, i.e. `.msfetchrc`, contains the
following settings:

~~~~ {.prettyprint .lang-bash}
MAILSERVER=webmail.linux.com
MAILPROT=https
MAILUSER=devinbuc
MAILUSERDAV=buck.deviney
MAILDOMAIN=LINUX
MAILCRED=UrgG2R6E
MAILMETHOD=owa
MAILBOXFILE=/home/devinbuc/msfetch.mbox
MAILOUTBOX=/home/devinbuc/msfetch.outbox
MAILHISTORY=/home/devinbuc/.msfetch.history

# Exclude e-mail collection from the folders below

EXCLUDE=RSS%20Feeds
EXCLUDE=Tasks
EXCLUDE=Sync%20Issues
EXCLUDE=Notes
EXCLUDE=Junk%20E-mail
EXCLUDE=Drafts
EXCLUDE=Journal
EXCLUDE=Contacts
EXCLUDE=Calendar
EXCLUDE=Deleted%20Items
EXCLUDE=Outbox

# Uncomment line below to prevent Sent Items download
#EXCLUDE=Sent%20Items
~~~~

msFetch 0.4 Installation
------------------------

Install following Perl modules:

1.  `LWP::UserAgent`
2.  `URI`
3.  `URI::Escape`
4.  `XML::LibXML`
5.  `Time::Local`
6.  `HTTP::Cookies`

Please note that it is important to extract `msfetch.tar.gz` to your
\$HOME directory, because, by default, `msfetch` executable will look
for `msfetch` configuration file in users' home directories. Thus, BOTH
FILES MUST BE IN YOUR USER DIRECTORY!!!!

Please secure `msfetch` configuration file by running the below command:

~~~~ {.prettyprint .lang-bash}
chmod 600 ~/.msfetchrc
~~~~

The below list describes various configuration settings in `msfetch`
configuration file:

-   **MAILSERVER** - DNS name or IP address of your MS Exchange server.
-   **MAILUSER** - Username for MS Exchange Outlook Web Access.
-   **MAILDOMAIN** - Windows domain for your user account.
-   **MAILCRED** - Your password.
-   **MAILPROT**- defines HTTP or HTTPS
-   **MAILMETHOD**- defines authentication type "Windows Basic", "OWA
    Web Forms", and "OWA 2007 Web Forms". Choices are "windows-basic",
    "owa", "owa2007".
-   **MAILPORT**- (optional) - specify non-standard ports. For example
    your Exchange might work on port 8080.
-   **MAILBOXFILE** - Location where all the downloaded content will be
    stored in. This utility only stores locally, does not support
    forwarding.
-   **MAILOUTBOX** - Location where all "Sent Items" e-mails will be
    stored in.
-   **MAILHISTORY** - Each time e-mail is downloaded, a record is added
    to this file in order to avoid double-downloads. If you delete this
    file, then msFetch will download mailbox from a scratch.
-   **EXCLUDE** - EXCLUDE directive is very helpful when you want
    certain folders to be skipped on download. By default I skipped
    Calendar, Tasks, etc... Although it is pretty cool to download
    "Calendar" items! :)

For example, user "john" from "example.com" domain might change his file
in the following way:

~~~~ {.prettyprint .lang-bash}
MAILSERVER=webmail.example.com 
MAILUSER=john  
MAILDOMAIN=cisco 
MAILCRED=password 
MAILPROT=http 
MAILMETHOD=windows-basic 
MAILPORT=8080 
MAILBOXFILE=/home/john/msfetch.mbox 
MAILOUTBOX=/home/john/msfetch.outbox 
MAILHISTORY=/home/john/.msfetch.history
EXCLUDE=RSS%20Feeds
EXCLUDE=Tasks
EXCLUDE=Sync%20Issues
EXCLUDE=Notes
EXCLUDE=Junk%20E-mail
EXCLUDE=Drafts
EXCLUDE=Journal
EXCLUDE=Contacts
EXCLUDE=Calendar
~~~~

Further, you might want to schedule automated download of your e-mails:\
 Add crontab job in order to collect e-mails automatically:

~~~~ {.prettyprint .lang-bash}
*/15 * * * * ~/msfetch > /dev/null 2>&1
~~~~

Debugging msFetch 0.5
---------------------

~~~~ {.prettyprint .lang-bash}
./msfetch --debug
~~~~


