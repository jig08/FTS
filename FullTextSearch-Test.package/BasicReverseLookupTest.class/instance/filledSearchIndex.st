requirements
filledSearchIndex
	| searchFacade |
	searchFacade := self searchFacadeClass new.
	searchFacade
		index: self class >> #comment;
		index: self class >> #documentConstants;
		index: self class >> #documentKeyWord;
		index: self class >> #documentSymbol;
		index: self class >> #documentMethodArray.
	^ searchFacade