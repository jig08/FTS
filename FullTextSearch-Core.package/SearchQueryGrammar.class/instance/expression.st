grammar
expression
	| localExpression |
	localExpression := PPExpressionParser new.	
	localExpression term: exact/ parens / key.
		localExpression
		group: [ :g |			
			g left:  minusToken do: [ :a :op :b | MinusSearchQuery left:a right:b] .
			g left: choiceToken do: [ :a :op :b | ChoiceSearchQuery left:a right:b.].	
			g left: orToken do:  [ :a :op :b | OrSearchQuery left:a right:b].		
			g left:  (#blank asParser plus) token do: [ :a :op :b | ChoiceSearchQuery left:a right:b]].		
		^ localExpression.
	