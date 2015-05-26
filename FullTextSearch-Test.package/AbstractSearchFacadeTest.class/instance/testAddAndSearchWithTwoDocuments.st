tests
testAddAndSearchWithTwoDocuments
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.

	searchFacade
		index: self document1 ;
		index: self document2 .
	
	result := searchFacade search: self textInDocument1AndInDocument2 .
	self assert: (result includes: self document1 ).
	self assert: (result includes: self document2).
	
	result := searchFacade search: self textUniqueInDocument1.
	self assert: (result includes: self document1 ).
	self deny: (result includes: self document2).
	
	result := searchFacade search: self textUniqueInDocument2.
	self deny: (result includes: self document1 ).
	self assert: (result includes: self document2).
	
	result := searchFacade search: self textThatDoesNotExist.
	self assert: result isEmpty.