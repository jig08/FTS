adding
add: aDocument
	aDocument isBehavior 
		ifTrue: [ self addClass: aDocument ]
		ifFalse: [ self addMethod: aDocument ].