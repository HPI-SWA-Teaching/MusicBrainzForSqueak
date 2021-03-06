building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildDirectoryTreeView;
		add: self buildFileView;
		add: self buildImportButton;
		add: self buildImportMethodCheckBox.
	^ self builder build: windowSpec