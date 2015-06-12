baseline
baseline4: spec
	<version: 'baseline4' >
	spec for: #'common' do: [ 
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/MaxLeske/FullTextSearch/main'.
		spec 
			package: 'FullTextSearch-Core' with: [
				spec requires: #( 'PetitParser' )];
			package: 'FullTextSearch-Test' with: [
				spec requires: #( 'FullTextSearch-Core' )];
			package: 'FullTextSearch-Benchmark' with: [
				spec requires: #( 'FullTextSearch-Core' 'SMark' )].
		spec 
			project: 'SMark' with: [
				spec
					className: 'ConfigurationOfBenchmarking';
					 repository: 'http://squeaksource.com/SMark' ].
		spec
			project: 'PetitParser' with: [
				spec
					loads: #('Core' 'Tests');
					className: 'ConfigurationOfPetitParser';
					repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main/' ]].
		