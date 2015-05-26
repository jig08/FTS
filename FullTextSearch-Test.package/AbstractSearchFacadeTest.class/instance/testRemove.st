tests
testRemove
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document1 .	
	
	result := searchFacade search: self textInDocument1AndInDocument2.
	self assert: (result includes: self document1).
	searchFacade remove: self document1.
	
	result := searchFacade search: self textInDocument1AndInDocument2.
	self assert: result isEmpty.

	

	
	
	
	