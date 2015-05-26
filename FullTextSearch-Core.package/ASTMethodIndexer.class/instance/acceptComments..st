visiting
acceptComments: comments
	comments do: [ :comment|
		self acceptCommentInterval: comment ]