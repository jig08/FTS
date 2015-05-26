requirements
testSearchWithAMinusQueryType
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document1.
	searchFacade index: self document2.
	searchFacade index: self document3.
	
	result := searchFacade search: 'commonTerm MINUS document1'.
	
	self deny: (result includes: self document1).
	self assert: (result includes: self document2).
	self assert: (result includes: self document3).
			
	

		
	
