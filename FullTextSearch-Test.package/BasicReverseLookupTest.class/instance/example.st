requirements
example
	| searchFacade|	
	searchFacade := self searchFacadeClass new.
	searchFacade index: True >> #printOn:.	
	searchFacade index: False >> #printOn:.	
