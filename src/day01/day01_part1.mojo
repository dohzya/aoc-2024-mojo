fn diff(a: Int, b: Int) -> Int:
    return a - b if a > b else b - a

fn part1(input: String) raises -> Int:
    var lhs = List[Int]()
    var rhs = List[Int]()
    for line in input.strip().splitlines():
        var parts = line[].split("   ")
        lhs.append(atol(parts[0]))
        rhs.append(atol(parts[1]))

    sort(lhs)
    sort(rhs)

    var res = 0
    for idx in range(0, len(lhs)):
        res += diff(lhs[idx], rhs[idx])

    return res
