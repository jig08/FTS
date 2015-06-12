grammar
exactSearch
	^( $" asParser negate star flatten) ==> [ :aString | 
		ExactChoiceSearchQuery string: aString asString].