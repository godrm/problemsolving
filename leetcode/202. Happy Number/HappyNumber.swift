//
//  HappyNumber.swift
//  leetcode
//
//  Created by JK on 2020/01/22.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    private func squares(num : Int) -> Int {
        let characters = String(num)
        var sum = 0
        for index in characters {
            let digit = Int(String(index), radix: 10) ?? 0
            sum += digit * digit
        }
        return sum
    }
    func isHappy(_ n: Int) -> Bool {
        var remain = n
        var results : Set<Int> = []
        while(remain > 1) {
            remain = squares(num: remain)
            if results.contains(remain) {
                return false
            }
            results.insert(remain)
        }
        return true
    }
}
