requirements
searchAllTokens: tokens in: methodsSelector 
	| searchFacade |
	searchFacade := self filledSearchIndex.
	self searchAllTokens: tokens in: methodsSelector searchFacade: searchFacade