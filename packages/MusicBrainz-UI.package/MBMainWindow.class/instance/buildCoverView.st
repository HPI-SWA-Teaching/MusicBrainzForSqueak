building
buildCoverView
	| coverSpec |
	coverSpec := self builder pluggableScrollPaneSpec new.
	^ coverSpec
		name: #coverView;
		morphClass: ImageMorph;
		model: self;
		frame: (0.65@0 corner: 1@0.5)
		