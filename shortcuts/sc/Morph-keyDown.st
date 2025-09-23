'From Cuis7.3 [latest update: #7158] on 23 September 2025 at 3:32:22 pm'!

!Morph methodsFor: 'events' stamp: 'TIV 9/20/2025 10:39:56'!
keyDown: aMorphicEvent
	"Handle a key down event. The default response is to do nothing."
	
	"Allow instances to dynamically use properties for handling common events."
	self 
		valueOfProperty: #'keyDown:' 
		ifPresentDo: [ :handler | handler value: aMorphicEvent ].
		
		ShortcutMonitor instance logShortcut: aMorphicEvent ! !
