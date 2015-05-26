accessing
at: token position: anInteger put: aDocumentObject 
	| tokenDictionary |
	tokenDictionary := index at: token ifAbsentPut: [ WeakIdentityKeyDictionary new ].
	tokenDictionary	at: aDocumentObject put: (
		tokenDictionary	
			at: aDocumentObject 
			ifPresent: [ :positions |
				(anInteger > 255
					ifTrue: [	positions asArray ]
					ifFalse: [ positions ]) copyWith: anInteger ]
			ifAbsent: [ 
				anInteger > 255 
					ifTrue: [ Array with: anInteger ]
					ifFalse: [ ByteArray with: anInteger]]).