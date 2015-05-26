matching
element:aSet isJustAfter: anOtherSet
	anOtherSet do: [ :elem | 
		aSet do: [ :element | 
			((elem + aSet key size) = element) ifTrue:[ ^true ]]].
	^false.