visiting
acceptAssignmentNode: anAssignmentNode 
	self halt.
	"TODO add: := "
	self needsParenthesis.
	super acceptAssignmentNode: anAssignmentNode. 