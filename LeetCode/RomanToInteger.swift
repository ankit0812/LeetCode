//
//  RomanToInteger.swift
//  LeetCode
//
//  Created by KingpiN on 03/12/21.
//

import Foundation

class RomanToInteger {
    
    func romanToInt(_ s: String) -> Int {
        
        let currentString = Array(s)
        
        let mainDictionary:[Character: Int] = ["I":1,
                                               "V":5,
                                               "X":10,
                                               "L":50,
                                               "C":100,
                                               "D":500,
                                               "M":1000]
        
        var currentIndex: Int = 0
        var total: Int = 0
        
        while currentIndex < currentString.count {
            if currentString.count > (currentIndex + 1) && mainDictionary[currentString[currentIndex]]! < mainDictionary[currentString[currentIndex + 1]]! {
                total += mainDictionary[currentString[currentIndex + 1]]! - mainDictionary[currentString[currentIndex]]!
                currentIndex += 2
            } else {
                total = total + mainDictionary[currentString[currentIndex]]!
                currentIndex += 1
            }
        }
        
        return total
    }
}
