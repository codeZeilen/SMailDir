private
addAttachment: stream named: attachmentName
	"Delete after 5.2 release"

	stream binary.
	mailMessage
		addAttachmentFrom: stream
		withName: attachmentName