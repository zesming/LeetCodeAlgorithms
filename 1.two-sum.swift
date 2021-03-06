/*
 * @lc app=leetcode id=1 lang=swift
 *
 * [1] Two Sum
 *
 * https://leetcode.com/problems/two-sum/description/
 *
 * algorithms
 * Easy (41.35%)
 * Total Accepted:    1.5M
 * Total Submissions: 3.6M
 * Testcase Example:  '[2,7,11,15]\n9'
 *
 * Given an array of integers, return indices of the two numbers such that they
 * add up to a specific target.
 * 
 * You may assume that each input would have exactly one solution, and you may
 * not use the same element twice.
 * 
 * Example:
 * 
 * 
 * Given nums = [2, 7, 11, 15], target = 9,
 * 
 * Because nums[0] + nums[1] = 2 + 7 = 9,
 * return [0, 1].
 * 
 * 
 * 
 * 
 */
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()

        // Type1
        // for i in 0..<nums.count {
        //     for j in i + 1..<nums.count {
        //         let sum = nums[i] + nums[j]
        //         if sum == target {
        //             return [i, j]
        //         }
        //     }
        // }

        // Type2
        var numsMap = [Int: Int]()
        for (i, e) in nums.enumerated() {
            numsMap[e] = i
        }
        for i in 0..<nums.count {
            let difference = target - nums[i]
            if numsMap[difference] != nil && numsMap[difference] != i {
                return [i, numsMap[difference]!]
            }
        }
        return result
    }
}
