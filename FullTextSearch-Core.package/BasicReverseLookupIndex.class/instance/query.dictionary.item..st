matching
query: aSearchQuery dictionary:aSecondDictionary item:item
	aSearchQuery do: [ :element | 
		aSecondDictionary 
			at: element 
			put: ((index at: element) at: item) value ].
		
	^ aSecondDictionary.
	
	
			