//
//  CPlusCodeTest.cpp
//  SwiftCodeTest
//
//  Created by yang.yang on 2018/2/13.
//  Copyright © 2018年 yang.yang. All rights reserved.
//

#include "CPlusCodeTest.hpp"


class NumArray {
public:
    
    NumArray(vector<int> nums) {
        
    }
    
    int sumRange(int i, int j) {
        for (; i < j; i++) {
            
        }
        return 1;
    }
    
};

class CPlusSolution {
public:
    CPlusSolution() {
        vector<int> nums;
        nums.push_back(1);
        nums.push_back(2);
        nums.push_back(1);
        nums.push_back(1);
        
        NumArray obj = *new NumArray(nums);
        int param_1 = obj.sumRange(2,3);
        printf("%d\n", param_1);
    }
};

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = new NumArray(nums);
 * int param_1 = obj.sumRange(i,j);
 */
