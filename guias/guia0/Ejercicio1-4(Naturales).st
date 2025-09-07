!classDefinition: #I category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: 'Ejercicio1-4(Naturales)'!
I class
	instanceVariableNames: 'next'!

!I class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 16:33:25'!
* aMultiplicand
	^aMultiplicand! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 16:32:39'!
+ anAdder
	^anAdder next! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 10:12:51'!
- aSustrahend
	
	self error: self descripcionDeErrorDeNumerosNegativosNoSoportados! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:07:34'!
/ aDivisor
	aDivisor == I ifTrue: [^self.].
	^self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 10:14:37'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^'Error division: el modelo no soporta numeros fraccionarios. No se puede dividir al I'.! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 10:09:34'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	^'Error resta: el modelo no soporta numeros negativos. No se puede restar al I'.! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 16:28:30'!
next
	^II! !

!I class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 16:31:52'!
previous
	^'Error I no tiene previo'.! !


!classDefinition: #II category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: 'Ejercicio1-4(Naturales)'!
II class
	instanceVariableNames: 'next previous'!

!II class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 01:06:06'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 16:35:38'!
+ anAdder
	^self previous + anAdder next! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 09:50:27'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:07:20'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:19:27'!
nameOfNext
	
	^self name , 'I'.! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 01:08:34'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:32:05'!
previous
	^previous! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 00:23:27'!
previous: aNumber
	
	previous := aNumber! !

!II class methodsFor: '-- all --' stamp: 'TIV 9/5/2025 21:44:04'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #III category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: 'Ejercicio1-4(Naturales)'!
III class
	instanceVariableNames: 'next previous'!

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
+ anAdder
	^self previous + anAdder next! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
nameOfNext
	
	^self name , 'I'.! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
previous
	^previous! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
previous: aNumber
	
	previous := aNumber! !

!III class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: 'Ejercicio1-4(Naturales)'!
IIII class
	instanceVariableNames: 'next previous'!

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
+ anAdder
	^self previous + anAdder next! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
nameOfNext
	
	^self name , 'I'.! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
previous
	^previous! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
previous: aNumber
	
	previous := aNumber! !

!IIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:16'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIII class' category: 'Ejercicio1-4(Naturales)'!
IIIII class
	instanceVariableNames: 'next previous'!

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
+ anAdder
	^self previous + anAdder next! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
nameOfNext
	
	^self name , 'I'.! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
previous
	^previous! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
previous: aNumber
	
	previous := aNumber! !

!IIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIIIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIII class' category: 'Ejercicio1-4(Naturales)'!
IIIIII class
	instanceVariableNames: 'next previous'!

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
+ anAdder
	^self previous + anAdder next! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:26'!
nameOfNext
	
	^self name , 'I'.! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous
	^previous! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous: aNumber
	
	previous := aNumber! !

!IIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIIIIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIII class' category: 'Ejercicio1-4(Naturales)'!
IIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
+ anAdder
	^self previous + anAdder next! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
nameOfNext
	
	^self name , 'I'.! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous
	^previous! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous: aNumber
	
	previous := aNumber! !

!IIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIIIIIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIII class' category: 'Ejercicio1-4(Naturales)'!
IIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
+ anAdder
	^self previous + anAdder next! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
nameOfNext
	
	^self name , 'I'.! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous
	^previous! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous: aNumber
	
	previous := aNumber! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !


!classDefinition: #IIIIIIIII category: 'Ejercicio1-4(Naturales)'!
DenotativeObject subclass: #IIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1-4(Naturales)'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIIII class' category: 'Ejercicio1-4(Naturales)'!
IIIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
* aMultiplicand
	
	^ self previous * aMultiplicand + aMultiplicand! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
+ anAdder
	^self previous + anAdder next! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
- aSustrahend
	aSustrahend == I ifTrue: [^self previous.].
	^self previous - aSustrahend previous.! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
/ aDivisor
	self == aDivisor ifTrue: [^I.].
	^I + ((self - aDivisor) / aDivisor)! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
nameOfNext
	
	^self name , 'I'.! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
next

	next ifNotNil: [^next].
	next := self cloneNamed: self name, 'I'.
	next previous: self.
	
	^next! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous
	^previous! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
previous: aNumber
	
	previous := aNumber! !

!IIIIIIIII class methodsFor: '-- all --' stamp: 'TIV 9/6/2025 12:12:27'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
		]! !
