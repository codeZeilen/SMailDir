# MailDir for Smalltalk [![Travis Badge for SMAil](https://travis-ci.org/codeZeilen/SMailDir.svg?branch=master)](https://travis-ci.org/codeZeilen/SMailDir) [![Coverage Status](https://coveralls.io/repos/github/codeZeilen/SMailDir/badge.svg?branch=master)](https://coveralls.io/github/codeZeilen/SMailDir?branch=master)
This provides an object-oriented interface to a maildir structure in your file system. The package provides the library (MailDir-Core) as well as a basic UI for browsing emails (MailDir-UI).

It is an evolved version of [CCMail](https://github.com/calmez/CCMail) originally created by Conrad Calmez.

## How to install SMailDir
1. Get a [Squeak trunk](http://www.squeak.org/downloads) from anytime after 2017
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load SMailDir with the following command:

```Smalltalk
Metacello new
  baseline: 'SMailDir';
  repository: 'github://codezeilen/SMailDir/repository';
  load: 'default'.
```

## Setup

### General notes
As maildir implementations use different flag separators in file names you can configure this for your mail archive object through the message `MDMailArchive>>#flagSeparator:`.

<!--### Using the user interface-->


### Using plain objects
To create a MDMailArchive use:

```Smalltalk
MDMailArchive archiveIn: FileDirectory default / 'GMail' flagSeparator: $;.
``` 

This will initially create an object structure representing the maildir structure and create a basic index. This might take several minutes depending on the size of your maildir.

## Usage

### Acessing message data
In general, you can find any messages related to data of an email in the `mails` and the `meta information` protocol of the class `MDMail`.

### Answering mails
SMailDir integrates with the MailSender infrastructure of Squeak. If you have set up a complete MDMailProfile you can answer mails from within the image.

<!--### Moving mails-->

### Synchronization
To synchronize your maildir structure you can call `MDMailArchive class>>#synchronizeAllArchives`. The class also allows you to start a background process regularly synchronizing your archive through `MDMailArchive class>>#startSynchronizationProcess`.

The synchronization preserves the object structure of MDMessageEntries. So if an email file was moved, the corresponding MDMessageEntry object is also moved to another MDMailBox object.

## Integration with other projects
If you have the (Rack)[https://github.com/hpi-swa/Rack] installed you can call annotated methods through the corresponding context menus. 

## Open issues
* Deleting messages in a GMail maildir might not delete them properly as GMail interprets deletion differently
* Be aware of synchronization issues. The process is not 100% robust yet. Although it happens very seldomly, single mail can get lost. We are working on it (see issue #3 and #4)
