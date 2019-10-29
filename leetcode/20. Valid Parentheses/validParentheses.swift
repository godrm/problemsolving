struct ValidParenthesis {
    static let opening : Set<String> = ["(", "{", "["]
    static let closing : Set<String> = [")", "}", "]"]
    static let pair = [")":"(", "}":"{", "]":"["]
}

extension Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        for char in s {
            if ValidParenthesis.opening.contains(String(char)) {
                stack.append(String(char))
            }
            else if ValidParenthesis.closing.contains(String(char)) {
                if let lastone = stack.popLast() {
                    let hasPair = (ValidParenthesis.pair[String(char)] ?? "") == lastone
                    if !hasPair { return false }
                }
                else {
                    return false
                }
            }
            else {
                return false
            }
        }
        return (stack.count == 0)
    }
}


