baseline
baseline1: spec 
	<version: 'baseline1' >
	spec for: #'common' do: [ 
		spec blessing: #'baseline'.
 		spec repository: 'http://smalltalkhub.com/mc/BenjA/FullTextSearch/main'.
		spec 
			package: 'FullTextSearch-Core';
			package: 'FullTextSearch-Test' with: [
				spec requires: #( 'FullTextSearch-Core' ) ]].