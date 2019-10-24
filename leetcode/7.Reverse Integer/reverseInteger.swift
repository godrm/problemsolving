//
//  solution.swift
//  leetcode
//
//  Created by JK on 2019/10/24.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

/*
 Example 1:

 Input: 123
 Output: 321
 
 Example 2:

 Input: -123
 Output: -321
 
 Example 3:

 Input: 120
 Output: 21
 */
extension Solution {
    func reverse(_ x: Int) -> Int {
        guard (x < 2147483647 && x > -2147483647) else { return 0 }
        let isMinus = x < 0
        let reversed = String(x).reversed().compactMap({ Int(String($0)) }).map{ String($0) }.joined()
        let result = (Int(reversed) ?? 0) * ((isMinus) ? -1 : 1)
        guard (result < 2147483647 && result > -2147483648) else { return 0 }
        return result
    }
}
