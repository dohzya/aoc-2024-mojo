from collections import Dict

fn part2(input: String) raises -> Int:
    var occurences = Dict[String, Int]()
    for line in input.strip().splitlines():
        var parts = line[].split("   ")
        var rhs = parts[1]
        occurences[rhs] = occurences.get(rhs, 0) + 1

    var similarity_score = 0
    for line in input.strip().splitlines():
        var parts = line[].split("   ")
        var lhs = parts[0]
        var nb = occurences.get(lhs, 0)
        # print(similarity_score, " = ", similarity_score, " + ", lhs, " * ", nb)
        similarity_score += atol(lhs) * nb

    return similarity_score
