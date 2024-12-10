from os import getenv
from testing import assert_equal, assert_true

from day03 import part1, part2

alias example1 = """
xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
"""

alias example2 = """
xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
"""

fn test_part1_example() raises:
    assert_equal(part1(example1), 161)

fn test_part1_real() raises:
    with open(getenv("PWD") + "/src/day03/input.txt", "r") as f:
        assert_equal(part1(f.read()), 190604937)

fn test_part2_example() raises:
    assert_equal(part2(example2), 48)

fn test_part2_real() raises:
    with open(getenv("PWD") + "/src/day03/input.txt", "r") as f:
        assert_equal(part2(f.read()), 82857512)