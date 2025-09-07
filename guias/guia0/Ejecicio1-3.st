!classDefinition: #Falso category: #'Ejecicio1-3'!
DenotativeObject subclass: #Falso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejecicio1-3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falso class' category: #'Ejecicio1-3'!
Falso class
	instanceVariableNames: ''!

!Falso class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:12:19'!
no
	^Verdadero! !

!Falso class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:19:38'!
o: unBool
	^unBool! !

!Falso class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:04:39'!
siFalso: unaAccionARealizar

	unaAccionARealizar value.! !

!Falso class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 20:52:14'!
siVerdadero: unaAccionARealizar
! !

!Falso class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:19:18'!
y: unBool
	^Falso! !


!classDefinition: #TestDeBooleanos category: #'Ejecicio1-3'!
DenotativeObject subclass: #TestDeBooleanos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejecicio1-3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TestDeBooleanos class' category: #'Ejecicio1-3'!
TestDeBooleanos class
	instanceVariableNames: ''!

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/19/2025 21:55:01'!
test01VerdaderoNegadoEsFalso

	Assert that: Verdadero no isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:11:38'!
test02FalsoNegadoEsVerdadero

	Assert that: Falso no isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:21:32'!
test03VerdaderoYVerdaderoEsVerdadero

	Assert that: (Verdadero y: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:21:22'!
test04FalsoYFalsoEsFalso

	Assert that: (Falso y: Falso) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:21:14'!
test04VerdaderoYFalsoEsFalso

	Assert that: (Verdadero y: Falso) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:21:07'!
test05FalsoYVerdaderoEsFalso

	Assert that: (Falso y: Verdadero) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:20:36'!
test06VerdaderoOVerdaderoEsVerdadero

	Assert that: (Verdadero o: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/19/2025 21:54:57'!
test06VerdaderoYVerdaderoEsVerdadero

	Assert that: (Verdadero y: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:24:47'!
test07VerdaderoOFalsoEsVerdadero

	Assert that: (Verdadero o: Falso) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:25:09'!
test08FalsoOFalsoEsFalso

	Assert that: (Falso o: Falso) isEqualTo: Falso! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:25:30'!
test09FalsoOVerdaderoEsFalso

	Assert that: (Falso o: Verdadero) isEqualTo: Verdadero! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 20:58:04'!
test10VerdaderoSiVerdadero

	|evaluacion|
	
	evaluacion := #NoRealizada.
	
	Verdadero siVerdadero: [evaluacion := #Realizada].
	
	Assert that: evaluacion isEqualTo: #Realizada.! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 20:59:15'!
test11FalsoSiFalso

	|evaluacion|
	
	evaluacion := #NoRealizada.
	
	Verdadero siVerdadero: [evaluacion := #Realizada].
	
	Assert that: evaluacion isEqualTo: #Realizada.! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:07:05'!
test12VerdaderoSiFalso

	|evaluacion|
	
	evaluacion := #NoRealizada.
	
	Verdadero siFalso: [evaluacion := #Realizada].
	
	Assert that: evaluacion isEqualTo: #NoRealizada.! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:07:12'!
test13FalsoSiVerdadero

	|evaluacion|
	
	evaluacion := #NoRealizada.
	
	Falso siVerdadero: [evaluacion := #Realizada].
	
	Assert that: evaluacion isEqualTo: #NoRealizada.! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:03:42'!
test14VerdaderoSiVerdaderoDiferente

	Verdadero siVerdadero: [^self].
	
	Assert fail
	! !

!TestDeBooleanos class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:04:00'!
test15FalsoSiVerdaderoDiferente

	Falso siVerdadero: [Assert fail].
	

	! !


!classDefinition: #Verdadero category: #'Ejecicio1-3'!
DenotativeObject subclass: #Verdadero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejecicio1-3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdadero class' category: #'Ejecicio1-3'!
Verdadero class
	instanceVariableNames: ''!

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'TIV 8/19/2025 21:54:24'!
y: otroBool
	^otroBool! !


!Verdadero class methodsFor: '-- all --' stamp: 'TIV 8/19/2025 21:54:48'!
no
	^Falso! !

!Verdadero class methodsFor: '-- all --' stamp: 'TIV 8/28/2025 23:20:05'!
o: otroBool
	^Verdadero! !

!Verdadero class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 20:52:21'!
siFalso: unaAccionARealizar
! !

!Verdadero class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 20:51:11'!
siVerdadero: unaAccionARealizar
	
	unaAccionARealizar value! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'TIV 8/19/2025 21:54:24'!
y: otroBool
	^otroBool! !
