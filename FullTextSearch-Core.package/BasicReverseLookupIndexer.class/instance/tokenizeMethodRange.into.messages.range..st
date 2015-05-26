private
tokenizeMethodRange: aString into: s messages: messages range: each
	each isComment ifTrue: [
		^ self 
			tokenizeMethodComment: aString 
			into: s
			messages: messages
			range: each ].
	
	each type = #string ifTrue: [
		^ self 
			tokenizeMethod: aString 
			into: s
			messages: messages
			stringRange: each
			delimiter: $' asString ].
	
	^ self 
		tokenizeMethodSource: aString 
		into: s
		messages: messages
		range: each