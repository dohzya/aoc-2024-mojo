from testing import assert_equal

from day01 import part1, part2

alias example = """
3   4
4   3
2   5
1   3
3   9
3   3
"""

fn test_part1_example() raises:
    assert_equal(part1(example), 11)

fn test_part1_real() raises:
    with open("src/day01/input.txt", "r") as f:
        assert_equal(part1(f.read()), 936063)

fn test_part2_example() raises:
    assert_equal(part2(example), 31)

fn test_part2_real() raises:
    with open("src/day01/input.txt", "r") as f:
        assert_equal(part2(f.read()), 23150395)
