matching
methodsForKeys: aCollection
	| results |
	results := Set new.
	aCollection do: [ :key|
		results addAll: (index at: key) keys ].
	^results.