as yet unclassified
tokenize: aString
	^ aString findTokens: {Character space. Character lf. Character tab.}.
