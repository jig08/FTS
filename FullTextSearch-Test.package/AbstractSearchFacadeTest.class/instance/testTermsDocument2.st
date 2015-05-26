tests
testTermsDocument2
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self document2 .	
	
	self termsInDocument2 do: [ :term|
		result := searchFacade search: term .
		self assert: (result includes: self document2) ].
		
	
	
	
	
	