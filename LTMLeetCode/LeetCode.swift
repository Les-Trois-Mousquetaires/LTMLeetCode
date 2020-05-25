//
//  LeetCode.swift
//  LTMLeetCode
//
//  Created by 柯南 on 2020/5/25.
//  Copyright © 2020 LTM. All rights reserved.
//

import UIKit

class LeetCode: NSObject {
    /**
     1、两数之和
     
     一遍哈希表，边存边对比
     */
    public class func twoSumOneHash(_ nums:[Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for i in 0...nums.count-1 {
            let complement = target - nums[i]
            if map.keys.contains(complement) {
                if let comIndex = map[complement] {
                    return [comIndex, i]
                }
            }
            map[nums[i]] = i
        }
        return []
    }
}
