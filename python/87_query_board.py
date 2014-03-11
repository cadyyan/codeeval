import sys

board = [[0 for j in range(256)] for i in range(256)]

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (cmd, args) = line.split(' ', 1)
        args = args.split(' ')

        if cmd == 'SetCol':
            col = int(args[0])
            x = int(args[1])

            for i in range(256):
                board[i][col] = x
        elif cmd == 'SetRow':
            row = int(args[0])
            x = int(args[1])

            for i in range(256):
                board[row][i] = x
        elif cmd == 'QueryCol':
            col = int(args[0])

            print sum([r[col] for r in board])
        elif cmd == 'QueryRow':
            row = int(args[0])

            print sum(board[row])

