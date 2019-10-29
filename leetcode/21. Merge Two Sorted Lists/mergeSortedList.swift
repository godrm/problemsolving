//
//  mergeSortedList.swift
//  leetcode
//
//  Created by JK on 2019/10/29.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head : ListNode? = nil
        var tail : ListNode? = head
        var p1 : ListNode? = l1
        var p2 : ListNode? = l2
        while(p1 != nil || p2 != nil) {
            let one = p1 != nil ? ListNode(p1!.val) : nil
            let two = p2 != nil ? ListNode(p2!.val) : nil
            var select : ListNode!
            if one == nil {
                if two == nil {
                    return head
                }
                else if two != nil {
                    select = two
                    if (p2 != nil) {
                        p2 = p2!.next
                    }
                }
            }
            else if two == nil {
                select = one
                if (p1 != nil) {
                    p1 = p1!.next
                }
            }
            else if (two!.val <= one!.val) {
                select = two
                if (p2 != nil) {
                    p2 = p2!.next
                }
            }
            else {
                select = one
                if (p1 != nil) {
                    p1 = p1!.next
                }
            }
            if head == nil {
                head = select
            }
            if tail != nil {
                tail!.next = select
                tail = select
            }
            else {
                tail = head
            }
        }
        
        return head
    }
}
