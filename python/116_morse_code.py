import sys

MORSE = {
    '.-':    'A',
    '-...':  'B',
    '-.-.':  'C',
    '-..':   'D',
    '.':     'E',
    '..-.':  'F',
    '--.':   'G',
    '....':  'H',
    '..':    'I',
    '.---':  'J',
    '-.-':   'K',
    '.-..':  'L',
    '--':    'M',
    '-.':    'N',
    '---':   'O',
    '.--.':  'P',
    '--.-':  'Q',
    '.-.':   'R',
    '...':   'S',
    '-':     'T',
    '..-':   'U',
    '...-':  'V',
    '.--':   'W',
    '-..-':  'X',
    '-.--':  'Y',
    '--..':  'Z',
    '.----': '1',
    '..---': '2',
    '...--': '3',
    '....-': '4',
    '.....': '5',
    '-....': '6',
    '--...': '7',
    '---..': '8',
    '----.': '9',
    '-----': '0',
}

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print ''.join([MORSE[code] if code != '' else ' ' for code in line.split(' ')])
