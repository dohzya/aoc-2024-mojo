var CHAR_0: String = "0"
var CHAR_9: String = "9"

fn part1(input: String) raises -> Int:
    var index = 0
    var value = 0
    while index < len(input):
        if input[index:index+4] == "mul(":
            index += 4
            var num1 = 0
            for _ in range(0, 3):
                if CHAR_0 <= input[index] <= CHAR_9:
                    var digit = atol(input[index])
                    num1 = num1 * 10 + digit
                    index += 1
            if input[index] == ",":
                index += 1
                var num2 = 0
                for _ in range(0, 3):
                    if CHAR_0 <= input[index] <= CHAR_9:
                        var digit = atol(input[index])
                        num2 = num2 * 10 + digit
                        index += 1
                if input[index] == ")":
                    value += num1 * num2
                    index += 1
                    continue
        index += 1

    return value