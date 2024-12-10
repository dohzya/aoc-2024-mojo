from testing import assert_equal, assert_true

from day02 import part1, part2, unsafe_report_index

alias example = """
7 6 4 2 1
1 2 7 8 9
9 7 6 2 1
1 3 2 4 5
8 6 4 4 1
1 3 6 7 9
"""

fn test_part1_example() raises:
    assert_equal(part1(example), 2)

fn test_part1_additional_test_case() raises:
    assert_equal(part1("1 5"), 0)

fn test_part1_real() raises:
    with open("src/day02/input.txt", "r") as f:
        assert_equal(part1(f.read()), 670)

fn test_part2_example() raises:
    assert_equal(part2(example), 4)

fn test_part2_example_1() raises:
    var input: List[String] = "7 6 4 2 1".split(" ")
    assert_equal(unsafe_report_index(input), 0)
fn test_part2_example_2() raises:
    var input: List[String] = "1 2 7 8 9".split(" ")
    assert_equal(unsafe_report_index(input), 2)
fn test_part2_example_3() raises:
    var input: List[String] = "9 7 6 2 1".split(" ")
    assert_equal(unsafe_report_index(input), 3)
fn test_part2_example_4() raises:
    var input: List[String] = "1 3 2 4 5".split(" ")
    assert_equal(unsafe_report_index(input), 2)
fn test_part2_example_5() raises:
    var input: List[String] = "8 6 4 4 1".split(" ")
    assert_equal(unsafe_report_index(input), 3)
fn test_part2_example_6() raises:
    var input: List[String] = "1 3 6 7 9".split(" ")
    assert_equal(unsafe_report_index(input), 0)

fn test_part2_additional_test_case_1_1() raises:
    assert_equal(part2("11 52 53 54 55"), 1)
fn test_part2_additional_test_case_1_2() raises:
    assert_equal(part2("51 11 53 54 55"), 1)
fn test_part2_additional_test_case_1_3() raises:
    assert_equal(part2("51 52 11 54 55"), 1)
fn test_part2_additional_test_case_1_4() raises:
    assert_equal(part2("51 52 53 11 55"), 1)
fn test_part2_additional_test_case_1_5() raises:
    assert_equal(part2("51 52 53 54 11"), 1)
fn test_part2_additional_test_case_1_6() raises:
    assert_equal(part2("99 52 53 54 55"), 1)
fn test_part2_additional_test_case_1_7() raises:
    assert_equal(part2("51 99 53 54 55"), 1)
fn test_part2_additional_test_case_1_8() raises:
    assert_equal(part2("51 52 99 54 55"), 1)
fn test_part2_additional_test_case_1_9() raises:
    assert_equal(part2("51 52 53 99 55"), 1)
fn test_part2_additional_test_case_1_10() raises:
    assert_equal(part2("51 52 53 54 99"), 1)

fn test_part2_additional_test_case_2_1() raises:
    assert_equal(part2("11 54 53 52 51"), 1)
fn test_part2_additional_test_case_2_2() raises:
    assert_equal(part2("55 11 53 52 51"), 1)
fn test_part2_additional_test_case_2_3() raises:
    assert_equal(part2("55 54 11 52 51"), 1)
fn test_part2_additional_test_case_2_4() raises:
    assert_equal(part2("55 54 53 11 51"), 1)
fn test_part2_additional_test_case_2_5() raises:
    assert_equal(part2("55 54 53 52 11"), 1)
fn test_part2_additional_test_case_2_6() raises:
    assert_equal(part2("99 54 53 52 51"), 1)
fn test_part2_additional_test_case_2_7() raises:
    assert_equal(part2("55 99 53 52 51"), 1)
fn test_part2_additional_test_case_2_8() raises:
    assert_equal(part2("55 54 99 52 51"), 1)
fn test_part2_additional_test_case_2_9() raises:
    assert_equal(part2("55 54 53 99 51"), 1)
fn test_part2_additional_test_case_2_10() raises:
    assert_equal(part2("55 54 53 52 99"), 1)

fn test_part2_additional_test_case_3_1() raises:
    assert_equal(part2("71 69 70 71 72 75"), 1)
fn test_part2_additional_test_case_3_2() raises:
    assert_equal(part2("47 49 47 44 42 41 40"), 1)


fn test_part2_real() raises:
    with open("src/day02/input.txt", "r") as f:
        assert_equal(part2(f.read()), 700)