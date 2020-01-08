//
//  runlength.swift
//  leetcode
//
//  Created by JK on 2020/01/08.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func makeRun(_ s: String, width: Int) -> String {
        var run = ""
        var last = ""
        var repeatCount = 1
        for index in stride(from: 0, to: s.count, by: width) {
            let range = s.index(s.startIndex, offsetBy: index)..<s.index(s.startIndex, offsetBy: min(index+width, s.count))
            let word = s[range]
            if last == word {
                repeatCount += 1
            }
            else {
                run += (((repeatCount > 1) ? String(repeatCount) : "") + last)
                repeatCount = 1
                last = String(word)
            }
        }
        run += (((repeatCount > 1) ? String(repeatCount) : "") + last)
        return run
    }
    
    func runLength(_ s:String) -> Int {
        let max = (s.count > 1) ? Int(s.count / 2) : 1
        var result = s.count
        var compressed = ""
        for round in 1...max {
            compressed = makeRun(s, width: round)
            if compressed.count < result {
                result = compressed.count
            }
        }
        return result
    }
}
