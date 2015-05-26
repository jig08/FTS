requirements
doSomething: firstArg with: secondArg searchFacade: searchFacade
	| result|
	^ firstArg do: [ :term | 
		result := (searchFacade search: term) result.
		self assert: (result includes: self class >> secondArg) ].