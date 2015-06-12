requirements
testKeyLetter
	| query |
	query := self parse: 'aString' rule: #key.
	self assert: query class equals: StringSearchQuery.
	self assert: query string equals: 'aString' 