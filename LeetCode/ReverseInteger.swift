//
//  ReverseInteger.swift
//  LeetCode
//
//  Created by KingpiN on 03/12/21.
//

import Foundation

class ReverseInteger {
    
    func reverse(_ x: Int) -> Int {
        
        var num: Int = x
        var rev: Int = 0
        var rem: Int = 0
        
        let isNegative: Bool = num < 0
        num = abs(num)
        
        while (num > 0) {
            rem = num % 10
            rev = rev * 10 + rem
            num = num / 10
        }
        
        if rev > Int32.max || rev < Int32.min {
            return 0
        }
        return (isNegative ? (rev * -1) : rev)
    }
}
