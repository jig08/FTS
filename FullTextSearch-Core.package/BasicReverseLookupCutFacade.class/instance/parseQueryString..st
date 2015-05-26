private
parseQueryString: aString
	| aNewString indice |	
	indice := 0.
	aNewString := ''.
	aString do: [ :char |
		indice := indice + 1.
		(indice = 3) ifTrue: [
			indice := 1.
			aNewString := aNewString copyWith: Character space ].
	aNewString := aNewString copyWith: char ].
	^SearchQueryGrammar parse:aNewString.
