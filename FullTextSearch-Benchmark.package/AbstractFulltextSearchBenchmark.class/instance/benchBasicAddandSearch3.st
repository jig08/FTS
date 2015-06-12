benchmarking
benchBasicAddandSearch3
	self indexing.
	100 timesRepeat: [
		searchFacade search: '(aString - aCollection) or: aSet' ].