matching
queryChoice: aSearchQuery
	^ (aSearchQuery left queryWith: self) intersection:(aSearchQuery right queryWith: self)