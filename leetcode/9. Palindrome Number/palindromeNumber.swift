//
//  palindromeNumber.swift
//  leetcode
//
//  Created by JK on 2019/10/25.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

/*
 Example 1:
 Input: 121
 Output: true
 
 Example 2:
 Input: -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

 Example 3:
 Input: 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */

extension Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xString = String(x)
        guard xString.count != 1 else { return true }
        guard x > 0 else { return false }
        let position = (xString.count / 2) - 1//(xString.count % 2)
        let start = xString.startIndex
        var result = true
        for index in 0...position {
            let frontIndex = xString.index(start, offsetBy: index)
            let endIndex = xString.index(xString.endIndex, offsetBy: -(index+1))
            if xString[frontIndex] != xString[endIndex] {
                result = false
                break
            }
        }
        return result
    }
    /*
    Follow up:

    Coud you solve it without converting the integer to a string?
    */

}
