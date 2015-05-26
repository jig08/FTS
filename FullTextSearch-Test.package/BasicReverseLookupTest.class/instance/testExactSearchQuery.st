tests
testExactSearchQuery

	| searchFacade result temp aCollection |	
		
	searchFacade := self searchFacadeClass new.	
	aCollection := OrderedCollection new.
	
	searchFacade index: self documentExact1.		
	searchFacade index: self documentExact2.
	searchFacade index: self document2.	
	searchFacade index: self document3.		
	searchFacade index: self document1.	
		
	result := searchFacade search: '"first second"'.
	self assert:(result includes:(self documentExact1)).
	self assert:(result includes:(self documentExact2)).
	self deny:(result includes:(self document1)).
	self deny:(result includes:(self document2)).
	self deny:(result includes:(self document3)).
	
		
	result := searchFacade search: 'first second'.
	self assert:(result includes:(self documentExact1)).
	self assert:(result includes:(self documentExact2)).
	self deny:(result includes:(self document1)).
	self deny:(result includes:(self document2)).
	self deny:(result includes:(self document3)).
	
	result := searchFacade search: '"first second third"'.
	self deny:(result includes:(self documentExact1)).
	self assert:(result includes:(self documentExact2)).
	self deny:(result includes:(self document1)).
	self deny:(result includes:(self document2)).
	self deny:(result includes:(self document3)).	

	result := searchFacade search: '"second first"'.
	self deny:(result includes:(self documentExact1)).
	self deny:(result includes:(self documentExact2)).
	self deny:(result includes:(self document1)).
	self deny:(result includes:(self document2)).
	self deny:(result includes:(self document3)).



	
