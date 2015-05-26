private
tokenizeMethodSource: aString into: s messages: messages range: each
	| token |	
	token := aString copyFrom: each start to: each end.
	s nextPut: (ReverseLookupEntry token:token position: each start).
	
	"Manually add the selectors of message sends like #at:put: directly "
	"(each isKeyword and: [ token asSymbol precedence == 3 ])
		ifTrue: [ 
			(messages 
				detect: [ :keyword | 
					keyword size > token size and: [ keyword beginsWith: token ] ]
				ifNone: [ nil ])
					ifNotNilDo: [ :keyword | 
						s nextPut: (ReverseLookupEntry token:keyword position: each start) ] ]."