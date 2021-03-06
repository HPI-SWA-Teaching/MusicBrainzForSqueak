metadata-management
findDuplicates
	| tracks duplicates currentTrack duplicatesForTrack |
	tracks := self collectAllTracks.
	duplicates := OrderedCollection new.
	[tracks isEmpty not]
		whileTrue: [
			currentTrack := tracks first.
			duplicatesForTrack := tracks select: [:each | self compareTrack: each with: currentTrack].
			(duplicatesForTrack size > 1)
				ifTrue: [duplicates addAll: duplicatesForTrack].
			tracks removeAll: duplicatesForTrack].
	^ duplicates 