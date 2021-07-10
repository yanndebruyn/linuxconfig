
set folder = "imaps://public@yanndebruyn.com@imap.dreamhost.com:993"
set smtp_url = "smtps://public@yanndebruyn.com@smtp.dreamhost.com:465"

set smtp_pass = `pass show email/public@yanndebruyn.com`
set imap_pass = `pass show email/public@yanndebruyn.com`

set from = "public@yanndebruyn.com"
set realname = "Yann De Bruyn"

set spoolfile = "+INBOX"
set record = "+INBOX.Sent"
set trash = "+INBOX.Trash"
set postponed = "+INBOX.Drafts"

mailboxes =INBOX =INBOX.Sent =INBOX.Drafts =INBOX.Trash =INBOX.old-messages
