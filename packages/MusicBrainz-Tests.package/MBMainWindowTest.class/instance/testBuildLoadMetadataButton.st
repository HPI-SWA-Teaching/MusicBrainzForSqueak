as yet unclassified
testBuildLoadMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildLoadMetadataButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.65@0.95 corner: 0.85@1);
		assert: buttonSpec label = 'Load Metadata from MusicBrainz';
		assert: buttonSpec action = 'loadMetadataFromMB'