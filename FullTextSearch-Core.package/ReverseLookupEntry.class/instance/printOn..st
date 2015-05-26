printing
printOn: aStream
	aStream nextPut: $(;
		print: self token;
		nextPutAll:'@';
		print: self position;
		nextPut: $)