*FullTextSearch-Core
onlyContainsSingleUppercaseCharacters
	"Return true if each uppercase character is surrounded by lowercase characters "
	| index |
	index := 1.
	[ index < self size ] whileTrue: [ 
		((self at: index) isUppercase 
		and: [ (self at: index + 1) isUppercase ])
			ifTrue: [ ^ false ].
		index := index + 1 ].
	^ true