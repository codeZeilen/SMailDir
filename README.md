# MailDir for Smalltalk
This provides an object-oriented interface to a maildir structure in your file system. The package provides the library as well as a basic UI for browsing emails.

It is an evolved version of [CCMail](https://github.com/calmez/CCMail) originally created by Conrad Calmez.

## Installation
It currently requires a Squeak trunk image newer than 5th of May 2017 but has no other dependencies.

## Usage
To create a MDMailArchive use:

```Smalltalk
MDMailArchive archiveIn: FileDirectory default / 'GMail'
``` 

This will initially create an object structure representing the maildir structure and create a basic index.

As maildir implementations use different flag separators in file names you can configure this for your mail archive object through the message `MDMailArchive>>#flagSeparator:`.

To synchronize your maildir structure you can call `MDMailArchive class>>#synchronizeAllArchives`. The class also allows you to start a background process regularly synchronizing your archive through `MDMailArchive class>>#startSynchronizationProcess`.

The synchronization preserves the object structure of MDMessageEntries. So if an email file was moved the MDMessageEntry object is also moved to another MDMailBox object.

## Open issues
* Currently the synchronization only synchronizes messages but not new or deleted folders
* You can not move messages using the API yet
