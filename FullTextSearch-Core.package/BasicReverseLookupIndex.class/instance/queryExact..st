matching
queryExact: aSearchQuery
	| aSet  indice anOtherSet aResultSet anOrderedCollection|
	aResultSet := Set new.
	anOrderedCollection := aSearchQuery string.
	aSet := (self find:(anOrderedCollection  at:1 )asLowercase).
	anOrderedCollection  do:[:item|aSet:=aSet intersection: (self find:item asLowercase)].
	aSet isEmpty ifTrue: [^aSet].
	aSet do:[:elem  | anOtherSet := (((index at:(anOrderedCollection  at:1)asLowercase ifAbsent: [])at:elem) copy).	indice:=2.
		[indice<= anOrderedCollection  size ]
	 whileTrue:[ anOtherSet:=anOtherSet+1.anOtherSet := (anOtherSet intersection:((index at:(anOrderedCollection  at:indice)asLowercase )at:elem)).indice:=indice+1].		
		 (anOtherSet isEmpty) ifFalse:[aResultSet add: elem]].	
	^ aResultSet.
