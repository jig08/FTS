private
tokenizeMethodRange: aString into: s messages: messages ranges: ranges
	^ ranges do: [ :each | 
		self
			tokenizeMethodRange: aString
			into: s
			messages: messages
			range: each ]