versions
versionDev: spec
	<version: 'dev' imports: #( 'baseline3' )>

	spec for: #common do: [
		spec description: 'new  version with benchmark'.
		spec author: 'BenjaminArezki'.
		spec timestamp: '11/14/2012 17:44'.
		spec blessing: #development.
		spec
			project: 'SMark' with: #development;
			project: 'PetitParser' with: 'minimal'; 
			package: 'FullTextSearch-Core' with: 'FullTextSearch-Core-BenjaminAREZKI.14';
			package: 'FullTextSearch-Test' with: 'FullTextSearch-Test-BenjaminAREZKI.13';
			package: 'FullTextSearch-Benchmark' with: 'FullTextSearch-Benchmark-BenjaminAREZKI.1'.]