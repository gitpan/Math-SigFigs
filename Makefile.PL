
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME             => 'Math::SigFigs',
	VERSION_FROM     => 'SigFigs.pm',
	($] >= 5.005
	? (ABSTRACT=>'do math with correct handling of significant figures',
	   AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
	: ()),
	'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
	PREREQ_PM => {
		'Carp'                => '0',
		'Test::More'          => '0',
		'Test::Pod'           => '0',
		'Test::Pod::Coverage' => '0',
	},
);
