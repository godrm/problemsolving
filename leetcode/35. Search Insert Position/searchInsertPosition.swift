//
//  searchInsertPosition.swift
//  leetcode
//
//  Created by JK on 2019/11/03.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var resultIndex = 0
        for index in 0..<nums.count {
            if nums[index] >= target {
                return index
            }
            else {
                resultIndex = index+1
            }
        }
        return resultIndex
    }
}
