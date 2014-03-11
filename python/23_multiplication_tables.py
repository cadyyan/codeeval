for i in range(1, 13):
    output = []
    for j in range(1, 13):
        output.append(str(i * j).rjust(4))

    print ''.join(output).strip()

