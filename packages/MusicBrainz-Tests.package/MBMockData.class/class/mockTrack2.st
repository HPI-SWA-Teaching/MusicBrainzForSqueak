as yet unclassified
mockTrack2
	"MBID for this track should be "
                | track |
                track := MBTrack new.
                track metadata 
                               at: #Title put: 'Epsilon - Original Remix';
                               at: #Album put: 'Epsilon';
                               at: #Artist put: 'Kygo';
                               at: #Genre: put: 'Tropical House';
                               at: #Year put: '2013'.
		    track filepath: 'C:/Users/Benutzer/test2.mp3'.
                ^ track
