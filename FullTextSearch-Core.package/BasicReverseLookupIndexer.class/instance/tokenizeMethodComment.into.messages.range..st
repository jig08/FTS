private
tokenizeMethodComment: aString into: aStream messages: messages range: each
	self 
		tokenizeMethod: aString 
		into: aStream
		messages: messages 
		stringRange: each 
		delimiter: $" asString