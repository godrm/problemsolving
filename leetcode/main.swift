//
//  main.swift
//  leetcode
//
//  Created by JK on 2019/10/24.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

extension String {
    public subscript(x: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: x)]
    }
}

class Solution {
    
}

let solve = Solution()

//print(solve.reverse(1534236469))
//print(solve.reverse(-123))
//print(solve.reverse(120))

//print(solve.isPalindrome(11))
//print(solve.isPalindrome(-121))
//print(solve.isPalindrome(0))
//print(solve.isPalindrome(123))
//print(solve.isPalindrome(121))

//print(solve.romanToInt("III"))
//print(solve.romanToInt("XIV"))
//print(solve.romanToInt("IX"))
//print(solve.romanToInt("LVIII"))
//print(solve.romanToInt("MCMXCIV"))

//print(solve.longestCommonPrefix(["flower","flow","flight"]))
//print(solve.longestCommonPrefix(["dog","racecar","car"]))
//print(solve.longestCommonPrefix([]))
//print(solve.longestCommonPrefix(["c","c"]))

//let list1One = ListNode(1)
//let list1Two = ListNode(2)
//let list1Four = ListNode(4)
//list1One.next = list1Two
//list1Two.next = list1Four
//
//let list2One = ListNode(1)
//let list2Three = ListNode(3)
//let list2Four = ListNode(4)
//list2One.next = list2Three
//list2Three.next = list2Four
//
//let head = solve.mergeTwoLists(nil, list2One)
//var next : ListNode? = head
//while(next != nil) {
//    print((next?.val)!, "->")
//    next = next?.next
//}

//var list = [1,1,1,2,2,3,3,3]
//print(solve.removeDuplicates(&list))

//var list = [3,2,2,3]
//print(solve.removeElement(&list, 3))
//
//print(solve.strStr("hello", "ll"))
//print(solve.strStr("aaaaa", "baa"))
//print(solve.strStr("a", "a"))

//print(solve.searchInsert([1,3,5,6], 5))
//print(solve.searchInsert([1,3,5,6], 2))
//print(solve.searchInsert([1,3,5,6], 7))

//print(solve.incompletionPlayers(participant: ["leo", "kiki", "eden"], completion: ["eden", "kiki"]))

print(solve.runLength("x"))
print(solve.runLength("aabbaccc"))
print(solve.runLength("ababcdcdababcdcd"))
print(solve.runLength("abcabcdede"))
print(solve.runLength("abcabcabcabcdededededede"))
print(solve.runLength("xababcdcdababcdcd"))
