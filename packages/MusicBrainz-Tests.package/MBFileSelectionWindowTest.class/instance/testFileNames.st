as yet unclassified
testFileNames
	self fileSelectionWindow selectedDirectory: (FileDirectory on: Smalltalk imagePath). 
	self assert: (self fileSelectionWindow fileNames class = OrderedCollection)