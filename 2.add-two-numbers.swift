/*
 * @lc app=leetcode id=2 lang=swift
 *
 * [2] Add Two Numbers
 *
 * https://leetcode.com/problems/add-two-numbers/description/
 *
 * algorithms
 * Medium (30.53%)
 * Total Accepted:    773.4K
 * Total Submissions: 2.5M
 * Testcase Example:  '[2,4,3]\n[5,6,4]'
 *
 * You are given two non-empty linked lists representing two non-negative
 * integers. The digits are stored in reverse order and each of their nodes
 * contain a single digit. Add the two numbers and return it as a linked list.
 * 
 * You may assume the two numbers do not contain any leading zero, except the
 * number 0 itself.
 * 
 * Example:
 * 
 * 
 * Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 * Output: 7 -> 0 -> 8
 * Explanation: 342 + 465 = 807.
 * 
 * 
 */
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result = ListNode(0)
        var p = l1
        var q = l2
        var current = result
        var carry = 0
        
        while (p != nil || q != nil) {
            let x = (p != nil) ? p!.val : 0
            let y = (q != nil) ? q!.val : 0
            var sum = x + y + carry
            carry = sum / 10
            current.next = ListNode(sum % 10)
            current = current.next!
            if p != nil {
                p = p!.next
            }
            if q != nil {
                q = q!.next
            }
        }
        
        if carry > 0 {
            current.next = ListNode(carry)
        }
        
        return result.next
    }
}

