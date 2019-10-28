class Solution {
    private var stack = [String]()
    private let opening : Set<String> = ["(", "{", "["]
    private let closing : Set<String> = [")", "}", "]"]
    private let pair = [")":"(", "}":"{", "]":"["]
    func isValid(_ s: String) -> Bool {
        for char in s {
            if self.opening.contains(String(char)) {
                stack.append(String(char))
            }
            else if self.closing.contains(String(char)) {
                if let lastone = stack.popLast() {
                    let hasPair = (pair[String(char)] ?? "") == lastone
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


