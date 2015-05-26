as yet unclassified
splitCommonPrefixesOf: aString
	"for now hardcoded..."
	#( 'new' 'is' 'get' 'basic' 'a' 'as' 'all' 'add' 'primitive' 'test' 'update' 'with' 'default' 'accept' 'visit' 'read' 'set')
		do: [ :prefix |
			((aString beginsWith: prefix) 
			and: [ prefix size < aString size 
			and: [(aString at: prefix size + 1) isUppercase]])
				ifTrue: [ | newString |
					self basicAddString: prefix.
					newString := aString allButFirst: prefix size.
					newString at: 1 put: newString first lowercase.
					^ self splitCommonPrefixesOf: newString ]].
	self basicAddString: aString.