visiting rb nodes
acceptSelectors: selectorParts arguments: arguments
	(selectorParts size = 1 and: [ arguments isEmpty ])
		ifTrue: [ ^ self addToken: selectorParts first ].
		
	selectorParts with: arguments do: [ :selector :argument | 
		self addToken: selector.
		self visitNode: argument ].