An MDMail represents an abstract email which is stored in a mail dir structure. It can be stored in multiple files which themselves are stored in multiple boxes (e.g. when boxes represent GMail tags).

The interface for managing the MDMails is separated into two categories:

1.) Public messages (#moveTo:, #moveToTrash, #moveToArchive) which can be used by the user to move the mail around. They take care of synchronizing the object graph with the directory structure.

2.) Public messages (#wasMovedTo:, #addBox:with:, #wasRemovedFrom:) which are used by the MailDir synchronization infrastructure to update the object graph on a change in the file system. 