requirements
testSearch3StringIn1documentWithParens
	| searchFacade result |
	
	searchFacade := self searchFacadeClass new.	
	searchFacade index: self documentabc.
	searchFacade index: self document1.
	searchFacade index: self document2.
	searchFacade index: self document3.
	
	result := searchFacade search: '(a b) c'.
	self assert: (result includes: self documentabc).
	
	result := searchFacade search: 'a OR (b - c)'.
	self assert: (result includes: self documentabc).
	
	result := searchFacade search: 'a OR ((b - c) (d - e))'.
	self assert: (result includes: self documentabc).

	result := searchFacade search: '(a OR b) - (c) (d OR e)'.
	self deny: (result includes: self documentabc).
	
