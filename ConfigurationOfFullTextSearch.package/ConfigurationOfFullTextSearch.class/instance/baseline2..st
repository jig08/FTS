baseline
baseline2: spec
	<version: 'baseline2' >
	spec for: #'common' do: [ 
		spec blessing: #'baseline'.
 		spec repository: 'http://smalltalkhub.com/mc/BenjA/FullTextSearch/main'.
		spec 
			package: 'FullTextSearch-Core';
			package: 'FullTextSearch-Test' with: [
				spec requires: #( 'FullTextSearch-Core' )];
			package: 'FullTextSearch-Benchmark' with: [
				spec requires: #( 'FullTextSearch-Core' 'SMark' )].
		 spec 
			project: 'SMark' with: [
	 		 spec
	   			 className: 'ConfigurationOfBenchmarking';
	   			 repository: 'http://squeaksource.com/SMark' ]].
		