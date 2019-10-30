//
//  removeDuplicatesArray.swift
//  leetcode
//
//  Created by JK on 2019/10/30.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        var lastone = nums.last!
        for index in stride(from: nums.count-2, through: 0, by: -1) {
            if lastone == nums[index] {
                nums.remove(at: index)
            }
            else {
                lastone = nums[index]
            }
        }
        return nums.count
    }
}
