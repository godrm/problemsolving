//
//  removeElement.swift
//  leetcode
//
//  Created by JK on 2019/10/31.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let maxCount = nums.count
        for index in stride(from: maxCount-1, through: 0, by: -1) {
            if nums[index] == val {
                nums.remove(at: index)
            }
        }
        return nums.count
    }
}
