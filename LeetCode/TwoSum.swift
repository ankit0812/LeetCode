//
//  TwoSum.swift
//  LeetCode
//
//  Created by KingpiN on 03/12/21.
//

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary: [Int: Int] = [:]
        for (index, currentNum) in nums.enumerated() {
            if let numberInDictionary = dictionary[target - currentNum] {
                return [numberInDictionary, index]
            } else {
                dictionary[currentNum] = index
            }
        }
        return []
    }
}
