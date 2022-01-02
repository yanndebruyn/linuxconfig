
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

mailboxes ====yann@yanndebruyn.com=== =INBOX =Sent =Drafts =Trash =old-messages
# mailboxes =INBOX =INBOX.Sent =INBOX.Drafts =INBOX.Trash =INBOX.old-messages

# Set persistent names of mailboxes in the sidebar. The first one is a file in 
# ~/mail/yann@yanndebruyn.com to be used as a divider.
named-mailboxes "===yann@yanndebruyn.com===" ====yann@yanndebruyn.com===
named-mailboxes "INBOX" =INBOX
named-mailboxes "Sent" =Sent
named-mailboxes "Drafts" =Drafts
named-mailboxes "Trash" =Trash
named-mailboxes "old-messages" =old-messages
