visiting
tokenizeSourceInterval: interval
	| current end next |
	current := interval first.
	end := interval last.
	[ current <= end ] whileTrue: [
		next := sourceCode 
			indexOfAnyOf: ' []{}()="''_=/\*-+:;,.?!@#$%^`~><' 
			startingAt: current 
			ifAbsent: [ ^ self addToken: (sourceCode copyFrom: current to: end)].
		(next-current > 1)
			ifTrue: [	self addToken: (sourceCode copyFrom: current to: next - 1) ].
		self addToken: (sourceCode at: next) asString.
		current := next + 1 ]