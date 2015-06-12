as yet unclassified
benchmarkIndexation
|searchFacade|
searchFacade := BasicReverseLookupFacade new.
SystemNavigation default allClasses 
		do: [ :class| searchFacade index: class ]
		displayingProgress: [ :class| class name ]