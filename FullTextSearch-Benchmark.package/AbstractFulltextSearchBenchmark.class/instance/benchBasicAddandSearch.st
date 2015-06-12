benchmarking
benchBasicAddandSearch
	self indexing.
		100 timesRepeat: [
		searchFacade search: 'aString' ].