benchmarking
benchBasicAddandSearch6
	self indexing.
	100 timesRepeat: [
		searchFacade search: '(aString or: aCollection) - aSet' ].