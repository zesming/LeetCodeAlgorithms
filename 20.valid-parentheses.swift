/*
 * @lc app=leetcode id=20 lang=swift
 *
 * [20] Valid Parentheses
 *
 * https://leetcode.com/problems/valid-parentheses/description/
 *
 * algorithms
 * Easy (35.83%)
 * Total Accepted:    516.4K
 * Total Submissions: 1.4M
 * Testcase Example:  '"()"'
 *
 * Given a string containing just the characters '(', ')', '{', '}', '[' and
 * ']', determine if the input string is valid.
 * 
 * An input string is valid if:
 * 
 * 
 * Open brackets must be closed by the same type of brackets.
 * Open brackets must be closed in the correct order.
 * 
 * 
 * Note that an empty string is also considered valid.
 * 
 * Example 1:
 * 
 * 
 * Input: "()"
 * Output: true
 * 
 * 
 * Example 2:
 * 
 * 
 * Input: "()[]{}"
 * Output: true
 * 
 * 
 * Example 3:
 * 
 * 
 * Input: "(]"
 * Output: false
 * 
 * 
 * Example 4:
 * 
 * 
 * Input: "([)]"
 * Output: false
 * 
 * 
 * Example 5:
 * 
 * 
 * Input: "{[]}"
 * Output: true
 * 
 * 
 */
class Solution {
    func isValid(_ s: String) -> Bool {
        let leftBrackets = ["[": "]", "{": "}", "(": ")"]
        let rightBrackets = ["]": "[", "}": "{", ")": "("]
        
        var bracketsStack = [String]()
        
        if s.count == 0 {
            return true
        }
        
        for char in s {
            let bracket = String(char)
            if rightBrackets[bracket] != nil {
                if let leftBracket = bracketsStack.last  {
                    if leftBracket != rightBrackets[bracket] {
                        return false
                    }
                    bracketsStack.removeLast()
                } else {
                    return false
                }
            } else if leftBrackets[bracket] != nil {
                bracketsStack.append(bracket)
            } else {
                return false
            }
        }
        
        if bracketsStack.count != 0 {
            return false
        }
        return true
    }
}
