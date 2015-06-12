benchmarking
benchBasicAddandSearch4
	self indexing.
	100 timesRepeat: [
		searchFacade search: '(aString and: aCollection) - aSet' ].