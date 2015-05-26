private
tokenizeMethod: aMethod
	| ranges aString messages |
	
	
	aString := aMethod getSource.
	messages := aMethod messages.

	ranges := SHParserST80 new
		rangesIn: aString
		classOrMetaClass: Object
		workspace: nil
		environment: nil.
		
	^ Array new: ranges size streamContents: [ :stream | 
		self
			tokenizeMethodRange: aString
			into: stream
			messages: messages
			ranges: ranges	]