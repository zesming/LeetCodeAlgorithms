/*
 * @lc app=leetcode id=14 lang=swift
 *
 * [14] Longest Common Prefix
 *
 * https://leetcode.com/problems/longest-common-prefix/description/
 *
 * algorithms
 * Easy (32.96%)
 * Total Accepted:    409.4K
 * Total Submissions: 1.2M
 * Testcase Example:  '["flower","flow","flight"]'
 *
 * Write a function to find the longest common prefix string amongst an array
 * of strings.
 * 
 * If there is no common prefix, return an empty string "".
 * 
 * Example 1:
 * 
 * 
 * Input: ["flower","flow","flight"]
 * Output: "fl"
 * 
 * 
 * Example 2:
 * 
 * 
 * Input: ["dog","racecar","car"]
 * Output: ""
 * Explanation: There is no common prefix among the input strings.
 * 
 * 
 * Note:
 * 
 * All given inputs are in lowercase letters a-z.
 * 
 */
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        var shortestString = strs[0]
        
        for string in strs {
            if string.count == 0 {
                return ""
            }
            
            if string.count < shortestString.count {
                shortestString = string
            }
        }
        
        var prefix = shortestString
        
        for string in strs {
            while !string.hasPrefix(prefix) {
                let index = prefix.index(prefix.endIndex, offsetBy: -1)
                prefix = String(prefix[..<index])
                
                if prefix.count == 0 {
                    return ""
                }
            }
        }
        
        return prefix
    }
}
