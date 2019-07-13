/*
 * @lc app=leetcode id=108 lang=swift
 *
 * [108] Convert Sorted Array to Binary Search Tree
 */
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else {
            return nil
        }
        let midIndex = (nums.count / 2)
        if midIndex == 0 {
            return TreeNode(nums.first!)
        } else if nums.count / 2 == 1 {
            let tree = TreeNode(nums[1])
            tree.left = TreeNode(nums[0])
            if nums.count == 3 {
                tree.right = TreeNode(nums[2])
            }
            
            return tree
        } else {
            let leftNums = [Int](nums[0...(midIndex - 1)])
            let rightNums = [Int](nums[(midIndex + 1)...(nums.count - 1)])
            let tree = TreeNode(nums[midIndex])
            tree.left = sortedArrayToBST(leftNums)
            tree.right = sortedArrayToBST(rightNums)
            
            return tree
        } 
    }
}

