//
//  implement-strStr.swift
//  leetcode
//
//  Created by JK on 2019/11/01.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count > 0 else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
        let stackCString = haystack.utf8CString
        let needCString = needle.utf8CString
        outside: for stackIndex in 0...(haystack.count - needle.count) {
            for needleIndex in 0..<(needle.count) {
                if stackCString[stackIndex+needleIndex] != needCString[needleIndex] {
                    continue outside
                }
                else if needleIndex == needle.count-1 {
                    return stackIndex
                }
            }
        }
        return -1
    }
}
