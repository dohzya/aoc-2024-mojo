from utils import Variant

alias DIR_UINIT = 0
alias DIR_ASC = 1
alias DIR_DESC = -1

fn unsafe_report_index(levels: List[String]) raises -> Int:
    var last = atol(levels[0])
    var dir = DIR_UINIT
    for idx in range(1, len(levels)):
        var level = atol(levels[idx])
        if dir == DIR_UINIT:
            dir = DIR_ASC if level > last else DIR_DESC
        var diff = level - last
        if dir == DIR_DESC:
            diff = -diff
        if not 1 <= diff <= 3:
            return idx
        last = level
    return 0

fn remove_index(levels: List[String], index: Int) -> List[String]:
    var res = List[String](capacity = len(levels) - 1)
    res.extend(levels[:index])
    res.extend(levels[index+1:])
    return res

fn report_is_safe_withing_tolerance_brute_force(levels: List[String]) raises -> Bool:
    if unsafe_report_index(levels) == 0:
        return True
    for idx in range(0, len(levels)):
        if unsafe_report_index(remove_index(levels, idx)) == 0:
            return True
    return False

fn report_is_safe_withing_tolerance_opti(levels: List[String]) raises -> Bool:
    var unsafe_idx = unsafe_report_index(levels)
    return (
        unsafe_idx == 0
        or unsafe_report_index(remove_index(levels, unsafe_idx - 2)) == 0
        or unsafe_report_index(remove_index(levels, unsafe_idx - 1)) == 0
        or unsafe_report_index(remove_index(levels, unsafe_idx)) == 0
    )

fn report_is_safe_withing_tolerance(levels: List[String]) raises -> Bool:
    return report_is_safe_withing_tolerance_brute_force(levels)

fn part2(input: String) raises -> UInt:
    var safe_reports = 0
    for line in input.strip().splitlines():
        if not line[]:
            continue
        if report_is_safe_withing_tolerance(line[].split(" ")):
            safe_reports += 1
    return safe_reports
