tests
testRemove1documentWith2documents
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document1 .	
	searchFacade index: self document2 .	
	
	result := searchFacade search: self textInDocument1AndInDocument2.
	self assert: (result includes: self document1  ).
	self assert: (result includes: self document2  ).	
	
	searchFacade remove: self document1.
	
	result := searchFacade search: self textInDocument1AndInDocument2.
	self deny: (result includes: self document1  ).
	self assert: (result includes: self document2  ).	
	

	
	
	
	