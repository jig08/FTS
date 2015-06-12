as yet unclassified
setUp
searchFacade:=BasicReverseLookupFacade new.
SystemNavigation default allClasses 
		do: [ :class| searchFacade index: class ]
		displayingProgress: [ :class| class name ]