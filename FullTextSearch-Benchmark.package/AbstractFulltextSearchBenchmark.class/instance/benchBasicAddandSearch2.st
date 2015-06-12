benchmarking
benchBasicAddandSearch2
	self indexing.
	100 timesRepeat: [
		searchFacade search: 'aString or: aCollection' ].