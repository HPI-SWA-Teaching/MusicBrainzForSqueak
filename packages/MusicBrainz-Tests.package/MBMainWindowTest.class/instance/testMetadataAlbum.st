TESTING: methods
testMetadataAlbum
	| aMBtrack anMBalbum |
	anMBalbum := MBalbum new.
	anMBalbum 
		artists: #('Artist1' 'Artist2');
		title: 'Testalbum'.
		
	self 
		mainWindow selectedEntity: anMBalbum;
		assert: (self mainWindow getMetadataAlbum = #('Albumname: Testalbum' 'Interpreten: Artist1, Artist2') asOrderedCollection).
	
	self mainWindow selectedEntity: aMBtrack.