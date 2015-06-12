grammar
key
	^$. asParser/(($# asParser optional,((#word asParser/$: asParser) plus))) flatten ==> [:aString | 
		StringSearchQuery string: aString asString].