var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	if (line === '') {
		return;
	}

	var tokens = line.split(',');
	var x = parseInt(tokens[0]);
	var n = parseInt(tokens[1]);

	var v = n;
	while (v < x) {
		v += n;
	}

	console.log(v);
});

