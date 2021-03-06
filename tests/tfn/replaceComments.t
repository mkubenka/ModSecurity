### Empty
{
	type => "tfn",
	name => "replaceComments",
	input => "",
	output => "",
	ret => 0,
},

### Nothing
{
	type => "tfn",
	name => "replaceComments",
	input => "TestCase",
	output => "TestCase",
	ret => 0,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Test\0Case",
	output => "Test\0Case",
	ret => 0,
},


### Basics
{
	type => "tfn",
	name => "replaceComments",
	input => "/* TestCase */",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/*TestCase*/",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/* TestCase*/",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/*TestCase */",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Before/* TestCase */After",
	output => "Before After",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Before /* TestCase */ After",
	output => "Before   After",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/* Test\nCase */",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/* Test\x0d\x0aCase */",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/* Test\x0aCase */",
	output => " ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "/* Test\x0dCase */",
	output => " ",
	ret => 1,
},

### Broken Comments
{
	type => "tfn",
	name => "replaceComments",
	input => "Before/* Test\x0d\x0aCase ",
	output => "Before ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Before /* Test\x0aCase ",
	output => "Before  ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Before/* Test\x0d\x0aCase ",
	output => "Before ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Before /* Test\x0aCase ",
	output => "Before  ",
	ret => 1,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Test\x0d\x0aCase */After",
	output => "Test\x0d\x0aCase */After",
	ret => 0,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Test\x0aCase */ After",
	output => "Test\x0aCase */ After",
	ret => 0,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Test\x0d\x0aCase */After",
	output => "Test\x0d\x0aCase */After",
	ret => 0,
},
{
	type => "tfn",
	name => "replaceComments",
	input => "Test\x0aCase */ After",
	output => "Test\x0aCase */ After",
	ret => 0,
},
