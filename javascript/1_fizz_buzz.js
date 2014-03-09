var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	if (line == '') {
		return;
	}

	var tokens = line.split(' ');
	var fizz = tokens[0];
	var buzz = tokens[1];
	var count = tokens[2];

	var output = '';
	for (var i = 1; i <= count; i++) {
		if (i != 1) {
			output += ' ';
		}

		if (i % fizz === 0 && i % buzz === 0) {
			output += 'FB';
		}
		else if (i % fizz === 0) {
			output += 'F';
		}
		else if (i % buzz === 0) {
			output += 'B';
		}
		else {
			output += i;
		}
	}

	console.log(output);
});

