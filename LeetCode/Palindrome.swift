//
//  Palindrome.swift
//  LeetCode
//
//  Created by KingpiN on 03/12/21.
//

import Foundation

class Palindrome {
    
    func isPalindrome(_ x: Int) -> Bool {
        var num: Int = x
        var rev: Int = 0
        var rem: Int = 0
        while num > 0 {
            rem = num % 10
            rev = rev * 10 + rem
            num = num / 10
        }
        return rev == x
    }
}
