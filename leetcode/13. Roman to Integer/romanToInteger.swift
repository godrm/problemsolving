//
//  romanToInteger.swift
//  leetcode
//
//  Created by Jung Kim on 2019/10/26.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

/*
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 
 
 Example 1:

 Input: "III"
 Output: 3
 Example 2:

 Input: "IV"
 Output: 4
 Example 3:

 Input: "IX"
 Output: 9
 Example 4:

 Input: "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 Example 5:

 Input: "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 */
let representation = [ "I" : 1, "V" : 5,
                       "X" : 10, "L" : 50,
                       "C" : 100, "D" : 500,
                       "M" : 1000,
                       "IV" : 4, "IX" : 9,
                       "XL" : 40, "XC" : 90,
                       "CD" : 400, "CM" : 900]

extension Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        let values = s.utf8CString
        let maxCount = s.count
        var wasCombo = false
        for index in 0..<maxCount {
            guard !wasCombo else {                     wasCombo = false
                continue
            }
            let current = values[index]
            let key = String(cString: [current, 0])
            if index <= maxCount-2 && (
                key == "I" || key == "X" || key == "C") {
                let next = values[index+1]
                let combine = String(cString: [current, next, 0], encoding: .utf8)!
                if let combo = representation[combine] {
                    result += combo
                    wasCombo = true
                }
                else {
                    result += representation[key] ?? 0
                    wasCombo = false
                }
            }
            else {
                result += representation[key] ?? 0
                wasCombo = false
            }
        }
        return result
    }
}
