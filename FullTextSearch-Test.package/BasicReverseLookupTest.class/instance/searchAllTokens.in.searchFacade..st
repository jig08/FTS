requirements
searchAllTokens: tokens in: methodsSelector searchFacade: searchFacade
	| result method|
	
	method :=  self class >> methodsSelector.
	
	tokens do: [ :term | 
		result := searchFacade search: term.
		self assert: (result includes: method) ].