tests
testTermsDocument1
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document1 .	
	
	self termsInDocument1 do: [ :term|
		result := searchFacade search: term.
		self assert: (result includes: self document1) ].
		
	
	
	
	
	