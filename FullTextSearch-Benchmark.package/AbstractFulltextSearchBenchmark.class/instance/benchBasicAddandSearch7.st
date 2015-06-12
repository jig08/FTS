benchmarking
benchBasicAddandSearch7
	self indexing.
	100 timesRepeat: [
		searchFacade search: '"aString remove"' ].