private
tokenizeMethodSource: aString into: s messages: messages range: each
	| token |	
	token := aString copyFrom: each start to: each end.
	(self isIndexable:token) ifTrue: [
		s nextPut: (ReverseLookupEntry token:token position: each start) ].
