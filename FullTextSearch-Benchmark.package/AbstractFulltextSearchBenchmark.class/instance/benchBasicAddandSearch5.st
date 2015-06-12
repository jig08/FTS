benchmarking
benchBasicAddandSearch5
	searchFacade index: String.
	searchFacade index: Object.
	searchFacade index: Dictionary.
	100 timesRepeat: [
		searchFacade search: 'aString or: (aCollection aSet)' ].