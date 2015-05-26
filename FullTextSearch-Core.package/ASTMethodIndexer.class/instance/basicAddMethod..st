tokenize
basicAddMethod: aMethod
	tokenIndex := 0.
	currentMethod := aMethod.
	sourceCode := aMethod sourceCode.
	aMethod ast acceptVisitor: self.