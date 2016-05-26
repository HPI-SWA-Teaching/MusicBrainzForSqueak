TESTING: opening and building
testAlbumTreeView
	| treeSpec |
	self mainWindow builder: MorphicToolBuilder new.
	treeSpec := self mainWindow buildAlbumTreeView.
	self 
		assert: treeSpec class = PluggableTreeSpec;
		assert: treeSpec model class = MBMainWindow;
		assert: treeSpec roots = 'getMBalbums';
		assert: treeSpec getChildren = 'getTracklistForAlbum:';
		assert: treeSpec label = 'getAlbumName:';
		assert: treeSpec getSelected = 'selectedEntity';
		assert: treeSpec setSelected = 'selectedEntity:';
		assert: treeSpec frame = (0.35@0 corner: 0.65@1)