alias DIR_UINIT = 0
alias DIR_ASC = 1
alias DIR_DESC = -1

fn report_is_safe(levels: List[String]) raises -> Bool:
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
            return False
        last = level
    return True

fn part1(input: String) raises -> Int:
    var safe_reports = 0
    for line in input.strip().splitlines():
        if not line[]:
            continue
        if report_is_safe(line[].split(" ")):
            safe_reports += 1
    return safe_reports
