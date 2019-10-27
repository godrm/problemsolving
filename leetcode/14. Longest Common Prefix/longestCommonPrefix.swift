//
//  longestCommonPrefix.swift
//  leetcode
//
//  Created by Jung Kim on 2019/10/27.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    private func comparePrefix(str1: String, str2: String) -> (Int, String) {
        let length1 = str1.count
        let length2 = str2.count
        var minLength : Int = length2
        if length1 < length2 {
            minLength = length1
        }
        var commonIndex = -1
        for index in 0..<minLength {
            if str1[str1.index(str1.startIndex, offsetBy: index)] != str2[str2.index(str2.startIndex, offsetBy: index)] {
                break
            }
            commonIndex = index
        }
        return (commonIndex, String(str1.prefix(commonIndex+1)))
    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        guard strs.count > 1 else { return strs[0] }
        var first = strs[0]
        for index in 1..<strs.count {
            let second = strs[index]
            let result = comparePrefix(str1: first, str2: second)
            if result.0 == -1 { return "" }
            first = result.1
        }
        
        return first
    }
}
