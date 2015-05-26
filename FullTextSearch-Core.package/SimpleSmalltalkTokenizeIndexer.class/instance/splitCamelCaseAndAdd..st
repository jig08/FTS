as yet unclassified
splitCamelCaseAndAdd: aString
	aString onlyContainsSingleUppercaseCharacters
		ifFalse: [ ^ self splitCommonPrefixesOf: aString ].
	(aString splitOn: [ :char| char isUppercase ]) do: [ :subString|
		self basicAddString: subString ]