!classDefinition: #ShortcutDisplay category: #Shortcuts!
BorderedBoxMorph subclass: #ShortcutDisplay
	instanceVariableNames: 'label text'
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'Shortcuts'!

!ShortcutDisplay methodsFor: 'drawing' stamp: 'TIV 9/23/2025 10:18:41'!
printShortcut: aString 

	self comeToFront.
	text := aString.
	label contents: text.! !


!ShortcutDisplay methodsFor: 'initialization' stamp: 'TIV 9/23/2025 10:23:06'!
initialize 

	super initialize .
	self class addInstance: self.
	self morphWidth: 340.
	self morphHeight: 65.
	self borderWidth: 5. 
	self name: 'Shortcut monitor'.
	
	label := LabelMorph new.
	text := 'SHORTCUT MONITOR'.
	label contents: text.
	label padding: 15@15.
	label emphasis: 3.
	self addMorph: label.
	
	self openInWorld.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ShortcutDisplay class' category: #Shortcuts!
ShortcutDisplay class
	instanceVariableNames: 'instancesSet'!

!ShortcutDisplay class methodsFor: 'as yet unclassified' stamp: 'TIV 9/22/2025 00:30:16'!
addInstance: anInstance

	instancesSet add: anInstance ! !

!ShortcutDisplay class methodsFor: 'as yet unclassified' stamp: 'TIV 9/22/2025 00:40:23'!
initialize

	instancesSet := WeakSet new.! !

!ShortcutDisplay class methodsFor: 'as yet unclassified' stamp: 'TIV 9/23/2025 10:17:41'!
printShortcut: aString
	

	
	instancesSet do: [:anInstance | anInstance isInWorld ifTrue: [anInstance printShortcut: aString.]].
	
	! !


!classDefinition: #ShortcutMonitor category: #Shortcuts!
BorderedBoxMorph subclass: #ShortcutMonitor
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'Shortcuts'!

!ShortcutMonitor methodsFor: 'processingKeyboardEvents' stamp: 'TIV 9/20/2025 10:26:07'!
createShortcutString: aKeyboardEvent

	|ShortcutString|

	ShortcutString := ''.
	
	^ShortcutString, (self modifierString: aKeyboardEvent), ' + ', (self keyboardEventToString: aKeyboardEvent)! !

!ShortcutMonitor methodsFor: 'processingKeyboardEvents' stamp: 'TIV 9/20/2025 14:28:44'!
keyboardEventToString: aKeyboardEvent

	|aValue|
	
	aValue := aKeyboardEvent  keyValue .

	aValue = 8 ifTrue: [^'Backspace'].
	aValue = 9 ifTrue: [^'Tab'].
	aValue = 13 ifTrue: [^'Enter'].
	aValue = 27 ifTrue: [^'Esc'].
	aValue = 32 ifTrue: [^'Espacio'].
	aValue = 127 ifTrue: [^'Supr'].
	
	"^ (Character value: aValue) asString."
	
	(aValue between: 33 and: 126) ifTrue:[
		^ (Character value: aValue) asString.].
	
	^ 'Key(', aValue asString ,')'
	! !

!ShortcutMonitor methodsFor: 'processingKeyboardEvents' stamp: 'TIV 9/22/2025 00:42:49'!
logShortcut: aKeyboardEvent
	
	|aShortcutAsString|
	Transcript show: 'Debug1: Empty'; cr.
	(self isValidShortcut: aKeyboardEvent) ifTrue: [
		aShortcutAsString := self createShortcutString: aKeyboardEvent.
		Transcript show: aShortcutAsString; cr.
		ShortcutDisplay printShortcut: aShortcutAsString.
		].



	! !

!ShortcutMonitor methodsFor: 'processingKeyboardEvents' stamp: 'TIV 9/22/2025 21:00:59'!
modifierString: aKeyboardEvent

	| mods |
	mods := OrderedCollection new.
	aKeyboardEvent controlKeyPressed ifTrue: [ mods add: 'Ctrl' ].
	aKeyboardEvent shiftPressed ifTrue: [ mods add: 'Shift' ].
	aKeyboardEvent commandAltKeyPressed ifTrue: [ mods add: 'Alt' ].
		
	^ mods isEmpty
		ifTrue: [ '' ]
		ifFalse: [ '+' join: mods ]
	! !


!ShortcutMonitor methodsFor: 'validation' stamp: 'TIV 9/20/2025 14:41:46'!
isValidAscii: aKeyboardEvent

	|aValue |

	aValue := aKeyboardEvent  keyValue .
	
	

	(self isValidNonPrintableValidChar: aValue) ifFalse: [^self isValidPrintableChar: aValue].
	
	^true
	
	! !

!ShortcutMonitor methodsFor: 'validation' stamp: 'TIV 9/20/2025 11:22:35'!
isValidModifier: aKeyboardEvent

	^aKeyboardEvent anyModifierKeyPressed or: [aKeyboardEvent shiftPressed]
	
	! !

!ShortcutMonitor methodsFor: 'validation' stamp: 'TIV 9/20/2025 14:37:52'!
isValidNonPrintableValidChar: aValue

	|aCollectionOfNonPrintableValidChar|

	aCollectionOfNonPrintableValidChar :=#(27 32 13 8 9 127 ). 
	"ASCII values for special chars such as 'space' or 'supr'"

	^aCollectionOfNonPrintableValidChar includes: aValue

	
	! !

!ShortcutMonitor methodsFor: 'validation' stamp: 'TIV 9/20/2025 14:41:11'!
isValidPrintableChar: aValue

	^aValue between: 33 and: 126! !

!ShortcutMonitor methodsFor: 'validation' stamp: 'TIV 9/20/2025 11:19:35'!
isValidShortcut: aKeyboardEvent

	^(self isValidModifier: aKeyboardEvent) and: [self isValidAscii: aKeyboardEvent ]
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ShortcutMonitor class' category: #Shortcuts!
ShortcutMonitor class
	instanceVariableNames: 'InstancesSet'!

!ShortcutMonitor class methodsFor: 'as yet unclassified' stamp: 'TIV 9/20/2025 10:23:11'!
instance

	Instance ifNil: [ Instance := self new initialize ].
	^Instance! !

ShortcutDisplay initialize!