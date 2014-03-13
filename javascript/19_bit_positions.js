function bit(n, p) {
	p--;

	return (n & 1 << p) >> p;
}

var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	if (line === '') {
		return;
	}

	var tokens = line.split(',');
	var n = parseInt(tokens[0]), p0 = parseInt(tokens[1]), p1 = parseInt(tokens[2]);

	console.log(bit(n, p0) == bit(n, p1) ? 'true' : 'false');
});

