requirements
testKeySelector
	| query |
	query := self parse: 'at:put:' rule: #key.
	self assert: query class equals: StringSearchQuery.
	self assert: query string equals: 'at:put:' 