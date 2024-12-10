from os import getenv
from testing import assert_equal, assert_true

from dayXX import part1, part2

alias example = """
the example
"""

fn test_part1_example() raises:
    assert_equal(part1(example), 0)

fn test_part1_real() raises:
    with open(getenv("PWD") + "/src/dayXX/input.txt", "r") as f:
        assert_equal(part1(f.read()), 0)

fn test_part2_example() raises:
    assert_equal(part2(example), 0)

fn test_part2_real() raises:
    with open(getenv("PWD") + "/src/dayXX/input.txt", "r") as f:
        assert_equal(part2(f.read()), 0)