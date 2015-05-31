as yet unclassified
initialize

	| font |
	
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 12.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
	
	ptm := PluggableTextMorph new.
	ptm extent: 700@500.
	ptm alwaysShowHScrollBar: true.
	
	title := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'rsz_1logo.gif').
	title position: 0@0.
	header := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'rsz_2header.gif').
	header position: 150@0.
	
	txtViewer := ptm textMorph.
	
	mnuTitles := MenuMorph new.
	mnuTitles stayUp: true.
	
	
	"Chapter clear.
	MyMenuItem clear.
	
	(Chapter new) title: 'WELCOME';content: 'Welcome to Text Viewer. Developed in Pharo 4.0.'.
	// (Chapter new) title: 'Chapter 2';content: 'Long Live Free software foundation!!'.
	((FileLocator workingDirectory / 'document') allFiles) sort do: [ :f|
		|d|
		d := Document new.
		d openWithFile: f.
		d title: (f basenameWithoutExtension ). ].
	Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter item|
			chapter := Chapter at: index.
			item := MyMenuItem new chapter: chapter.
			mnuTitles addMenuItem: item.
		].
	].

	Document instances do: [ :chapter |
		|item|
		item := MyMenuItem new chapter: chapter.
		mnuTitles addMenuItem: item. ]."
	
	mnuTitles position: 100@100.
	ptm position: 300@100.
	
	box := Morph new.
	box title: 'sQuick' icon: title.
	box color: Color paleOrange  .
	box extent: (World extent).
	box addMorph: ptm.
	box addMorph: mnuTitles.
	box addMorph: title .
	box addMorph: header .
	box openInWindow .