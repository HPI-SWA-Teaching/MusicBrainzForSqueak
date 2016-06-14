metadataView
playSong
	
	self player ifNotNil: [
		self player isPlaying
		ifTrue: [
			self player pause.
			self changed: #labelForPlayerButton.
			^ self]
		ifFalse: [
			self player resume.
			self changed: #labelForPlayerButton.
			^ self]
		].

	self selectedEntity = nil
		ifTrue: [^ self].
"	self selectedEntity class entityName = 'release'
		ifTrue: [^ self getMetadataAlbum]."
	self selectedEntity class entityName = 'recording'
		ifTrue: [
			self player: (MBMP3Player onFileNamed: self selectedEntity filepath).
			self player play.
			self changed: #labelForPlayerButton.
			]