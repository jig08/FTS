adding
addClass: aClass
	
	(aClass name beginsWith: 'Manifest')
		ifTrue: [ ^ self ].

	aClass theNonMetaClass methods 
		do: [ :method | self addMethod: method ].
	
	aClass theMetaClass methods 
		do: [ :method | self addMethod: method ].