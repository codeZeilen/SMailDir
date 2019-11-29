boxes
delete
	"Delete this box from its parent box"
	(self mailArchive fileDirectory / self fullBoxName) recursiveDelete.
	self synchronizeSubBoxes.