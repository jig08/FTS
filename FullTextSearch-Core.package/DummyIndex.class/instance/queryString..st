querying
queryString: aStringQuery
	| aSearchResult |
	aSearchResult := SearchResult query: aStringQuery.
	aSearchResult result: (index select: [ :item | 
		item includesSubstring: aStringQuery string]).
	^ aSearchResult.
	