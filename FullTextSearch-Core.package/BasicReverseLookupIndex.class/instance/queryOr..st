matching
queryOr: aSearchQuery
	^ (aSearchQuery left queryWith: self) 
		union: 
		(aSearchQuery right queryWith: self).
			
	