*FullTextSearch-Test
testLevenshteinDistance
		self assert: ('house' levenshteinDistance:'house') equals:0.
		self assert: ('house' levenshteinDistance:'horse') equals: 1.	
		self assert: ('house' levenshteinDistance:'morse')equals:2.
		self assert: ('house' levenshteinDistance:'ho')equals:3.
		self assert: ('mother' levenshteinDistance:'father')equals:2.
		self assert: ('son' levenshteinDistance:'sister')equals:5.
		self assert: ('astring' levenshteinDistance:'str')equals:4.