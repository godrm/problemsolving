//
//  singleNumber.swift
//  leetcode
//
//  Created by JK on 2020/01/22.
//  Copyright © 2020 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var singles : Set<Int> = []
        for number in nums {
            if singles.contains(number) {
                singles.remove(number)
            }
            else {
                singles.insert(number)
            }
        }
        return singles.first!
    }
}
