def foo1(seq):
    total = 0
    print(len(seq) // 2)
    for k in range(len(seq) // 2):
        total = total + seq[1 + (2 * k)]
        print([1 + (2 * k)])
    return total

print(foo1([3, 6]))
