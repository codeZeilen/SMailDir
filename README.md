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

### Using the user interface
You can also use a small helper tool for creating a maildir profile which includes an archive as well as SMTP credentials for answer emails. You can either find the tool in the Apps menu from the world docking bar or open it with:

```Smalltalk
MDMailProfileBrowser open
```

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

### Moving mails
For moving mails you can use the messages in the `mails` protocol.

### Synchronization
To synchronize your maildir structure you can call `MDMailArchive class>>#synchronizeAllArchives`. The class also allows you to start a background process regularly synchronizing your archive through `MDMailArchive class>>#startSynchronizationProcess`.

The synchronization preserves the object structure of MDMails. So if an email file was moved, the corresponding MDMail object is also moved to another MDMailBox object.

## Integration with other projects
The default configuration also installs the (Rack)[https://github.com/hpi-swa/Rack] which integrates the single tools in MailDir-UI.

## Open issues
* Deleting messages in a GMail maildir might not delete them properly as GMail interprets deletion differently
* Be aware of synchronization issues. The process is not 100% robust yet. Although it happens very seldomly, single mail can get lost. We are working on it (see issue #3 and #4)
* On the same note: If you try to modify a mail (set to read or move) which has changed on the file system since the last synchronization, you might also get errors (see issue #5).
