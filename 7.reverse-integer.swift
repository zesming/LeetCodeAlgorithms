/*
 * @lc app=leetcode id=7 lang=swift
 *
 * [7] Reverse Integer
 *
 * https://leetcode.com/problems/reverse-integer/description/
 *
 * algorithms
 * Easy (25.10%)
 * Total Accepted:    606.9K
 * Total Submissions: 2.4M
 * Testcase Example:  '123'
 *
 * Given a 32-bit signed integer, reverse digits of an integer.
 * 
 * Example 1:
 * 
 * 
 * Input: 123
 * Output: 321
 * 
 * 
 * Example 2:
 * 
 * 
 * Input: -123
 * Output: -321
 * 
 * 
 * Example 3:
 * 
 * 
 * Input: 120
 * Output: 21
 * 
 * 
 * Note:
 * Assume we are dealing with an environment which could only store integers
 * within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of
 * this problem, assume that your function returns 0 when the reversed integer
 * overflows.
 * 
 */
class Solution {
    func reverse(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min {
            return 0
        } else {
            let s = "\(x)"
            var digit = 1
            var resultNumber = 0
            var minus = false
            
            for char in s {
                if let num = Int(String(char)) {
                    resultNumber += num * digit
                    digit *= 10
                } else {
                    minus = true
                }
            }
            
            if minus {
                resultNumber *= -1
            }

            if resultNumber > Int32.max || resultNumber < Int32.min {
                return 0
            }
            return resultNumber
        }
    }
}
