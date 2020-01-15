//
//  kNumber.swift
//  leetcode
//
//  Created by JK on 2020/01/15.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    private func subarray(from origin:[Int], begin: Int, end: Int) -> [Int] {
        var split = [Int]()
        for item in origin.index(0, offsetBy: begin-1)...origin.index(0, offsetBy: end-1) {
            split.append(origin[item])
        }
        return split
    }
    
    func knumber(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result = [Int]()
        for indecies in commands {
            let sub = subarray(from: array, begin: indecies[0], end: indecies[1])
            let sorted = sub.sorted()
            result.append(sorted[sorted.index(0, offsetBy: indecies[2]-1)])
        }
        return result
    }
}
