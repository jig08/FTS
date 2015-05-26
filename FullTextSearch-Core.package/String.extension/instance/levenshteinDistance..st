*FullTextSearch-Core
levenshteinDistance: aString
	|matrix cost|
	matrix:=Matrix rows: (self size+1) columns: (aString size+1).
	1 to: (self size+1) do: [:counter| matrix at:counter at:1 put:counter-1].
	1 to: (aString size+1) do: [:counter| matrix at:1 at:counter put:counter-1].
	
	2 to: (self size+1)
		do:[:counter1|(2to:(aString size+1))
			do:[:counter2| 
				((self at: (counter1-1))=(aString at: (counter2-1)))
					ifTrue:[cost:=0]
					ifFalse:[cost:=1].
				matrix 
					at:counter1 
					at:counter2 
					put: (Array 
							with:(((matrix at:(counter1-1)at:counter2))+1)
							with:((matrix at:counter1 at:(counter2-1))+1)
							with:((matrix at:(counter1-1) at:(counter2-1))+cost)) min.]].					
	^ (matrix at:(self size+1) at: (aString size +1)).
	