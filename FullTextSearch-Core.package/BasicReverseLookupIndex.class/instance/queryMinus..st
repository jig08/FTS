matching
queryMinus: aSearchQuery
	|aResult|
	^	((aSearchQuery left queryWith: self) asSet) difference: ((aSearchQuery right queryWith: self) asSet).
	