tests
testAddAndSearch2
	| searchFacade|	
	searchFacade := self searchFacadeClass new.
	searchFacade index: True >> #printOn:.	
