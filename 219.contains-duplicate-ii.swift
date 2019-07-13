/*
 * @lc app=leetcode id=219 lang=swift
 *
 * [219] Contains Duplicate II
 */
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    guard nums.count >= 2 else {
        return false
    }
    
    var numsSet = [Int : Int]()
    
    for (index, value) in nums.enumerated() {
        if let num = numsSet[value], index - num <= k {
            return true
        } else {
            numsSet[value] = index
        }
    }
    
    return false
}
}

