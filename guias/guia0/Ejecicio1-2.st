!classDefinition: #Bill category: 'Ejecicio1-2'!
DenotativeObject subclass: #Bill
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejecicio1-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Bill class' category: 'Ejecicio1-2'!
Bill class
	instanceVariableNames: 'energia'!

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 22:59:31'!
caminar: unaCantidadDeKilometros

	energia := energia - unaCantidadDeKilometros - 3! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 23:04:55'!
comer: unaCantidadDeKilosDeCerebro

	energia := energia + (unaCantidadDeKilosDeCerebro * 4)! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 23:00:57'!
energia

	^energia! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 22:57:34'!
init

	energia := 28! !


!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 22:59:31'!
caminar: unaCantidadDeKilometros

	energia := energia - unaCantidadDeKilometros - 3! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 23:04:55'!
comer: unaCantidadDeKilosDeCerebro

	energia := energia + (unaCantidadDeKilosDeCerebro * 4)! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 23:00:57'!
energia

	^energia! !

!Bill class methodsFor: 'actions' stamp: 'TIV 8/28/2025 22:57:34'!
init

	energia := 28! !
