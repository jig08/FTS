public
remove: aDocument
	index valuesDo: [ :termLookup|
		self remove: aDocument fromTermLookup: termLookup].