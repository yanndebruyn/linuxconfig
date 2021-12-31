
# set folder = "imaps://yann@yanndebruyn.com@imap.dreamhost.com:993"
set folder = "~/mail/yann@yanndebruyn.com"
set smtp_url = "smtps://yann@yanndebruyn.com@smtp.dreamhost.com:465"

set smtp_pass = `pass show email/yann@yanndebruyn.com`
set imap_pass = `pass show email/yann@yanndebruyn.com`

set from = "yann@yanndebruyn.com"
set realname = "Yann De Bruyn"

set spoolfile = "+INBOX"
set record = "+INBOX.Sent"
set trash = "+INBOX.Trash"
set postponed = "+INBOX.Drafts"

mailboxes =INBOX =Sent =Drafts =Trash =old-messages
# mailboxes =INBOX =INBOX.Sent =INBOX.Drafts =INBOX.Trash =INBOX.old-messages
