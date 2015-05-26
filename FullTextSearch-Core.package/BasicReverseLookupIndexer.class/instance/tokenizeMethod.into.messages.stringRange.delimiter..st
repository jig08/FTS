private
tokenizeMethod: aString into: s messages: messages stringRange: each delimiter: delimiter
	| comment position |
	s nextPut: (ReverseLookupEntry token: delimiter position: each start).
	position := each start + 1.
	comment := aString copyFrom: position to: each end - 1.	
	(self tokenize: comment)
		do: [ :string | 
			s nextPut: (ReverseLookupEntry token: string position:position).
			position := position + string size + 1 ].		
	s nextPut: (ReverseLookupEntry token: delimiter position: each end).