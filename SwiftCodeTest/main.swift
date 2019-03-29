//
//  main.swift
//  SwiftCodeTest
//
//  Created by yang.yang on 2017/11/8.
//  Copyright © 2017年 yang.yang. All rights reserved.
//

import Foundation

//179 - Given a list of non negative integers, arrange them such that they form the largest number.
//
//Example 1:
//
//Input: [10,2]
//Output: "210"
//Example 2:
//
//Input: [3,30,34,5,9]
//Output: "9534330"
//Note: The result may be very large, so you need to return a string instead of an integer.

class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        if nums.count == 0 {
            return ""
        }
//        let strArray = nums.map{"\($0)"}
        let strArray = nums.map{String($0)}
//        let strArray = nums.map { (a) -> String in
//            "\(a)"
//        }
        print(strArray);
        let nums = nums.sorted { (a, b) -> Bool in
            let strA = String(a)
            let strB = String(b)
            return Int(strA + strB)! > Int(strB + strA)!
        }

        var result: String = String();
        for num in nums {
            if result.count == 0 && num == 0 {
                continue;
            }
            result += String(num)
        }
        if result.count == 0 {
            return "0"
        } else {
            return result;
        }
    }
}

func main() {
    var pre = [3,30,34,5,9]
//    var pre = [1,2,5,-2,-5,0,0,-1]
//    let island = [[0,1,0,0],[1,0,0,0],[0,0,0,1],[0,0,1,0]]
//    let triangle = [[2],[3,4],[6,5,7],[4,1,8,3]];
//    let quality = [10,20,5], wage = [70,50,30], K = 2
//var pre = [2,1]
//    let node = treeCreater(island)
//    let list = linkListCreater(pre)
    let solution = Solution();
//    let result = solution.mincostToHireWorkers(quality, wage, K)
    let result = solution.largestNumber(pre)
    print(result)
    //前序
//    let pre = [1,2,4,5,3,6,7]
//    //中
//    let inOrder = [4,2,5,1,6,3,6]
//    //后
//    let post = [4,5,2,6,7,3,1]
//
//    let paths = [[0,0,1],
//                 [0,0,0,0],
//                 [0,0,0,1],
//                 [0,1]
//    ]
//    let list1 = linkListCreater([0])
//    let list2 = linkListCreater([1,3,5,7])

//    let treeNode = treeCreater([-10,9,20,-1,-1,15,7,-1,-1,-1,-1,10,-3,-1,-1])
//    print(solution.networkDelayTime(list1,list2))
    //let list = solution.mergeList(list1, list2)
    //print(list);
    
    
    //while true {
    
    
    //let treeNode = treeCreater([1, 2, 3, 4,5,6,7])
    //-2 -2 -2 -2 -3 -2 3
    
    //let treeNode = treeCreater([5,4,8,11,-1,13,4,7,2,-1,-1,-1])
    //let treeNode = treeCreater([1,2,3])
    //var inputArr = [Int]()
    
    //print(solution.enumerateTreeBehind(treeNode))
    
    //}
}

main()



exit(0)

while true {
    let standardInput = readLine()
//    if standardInput != nil {
//        print(solution.isValidSudoku(board))
//    }
    if standardInput != nil {
//        if standardInput! != "end" {
//            let intInput = Int(standardInput!)!
//            inputArr.append(intInput)
//        } else {
//            let listNode = treeCreater(inputArr);
//            print(solution.maxPathSum(treeNode))
//            inputArr.removeAll()
//        }
//        print(solution.numJewelsInStones(standardInput!, standardInput!))
    }
}

//var ocObject = OCCodeTest();
//ocObject.cPlusBridge();

exit(0)

//let board = [
//    ["8","3",".",".","7",".",".",".","."],
//    ["6",".",".","1","9","5",".",".","."],
//    [".","9","8",".",".",".",".","6","."],
//    ["8",".",".",".","6",".",".",".","3"],
//    ["4",".",".","8",".","3",".",".","1"],
//    ["7",".",".",".","2",".",".",".","6"],
//    [".","6",".",".",".",".","2","8","."],
//    [".",".",".","4","1","9",".",".","5"],
//    [".",".",".",".","8",".",".","7","9"]
//]

//
//var result = [[Character]]()
//for array in board {
//    var chars = [Character]()
//    for char in array {
//        chars.append(Character(char))
//    }
//    result.append(chars)
//}

//print(solution.isValidSudoku(result));
//
//var numberArr:[Int] = [1,3]
//var numberArr2:[Int] = [2,4,6,7]

//var numberArray:[Int] = [1,1,4,5,7,1,2]
//
//let numberArray3 = [[0,1,0,0],
//                    [1,1,1,0],
//                    [0,1,0,0],
//                    [1,1,0,0]];
//let kong = ListNode(2)
//let listNode1 = linkListCreater([1])
//let listNode2 = linkListCreater([-1,5,3,4,0])
//var array1:[Character] = ["a","b","d","f","y"]
//let char1 = Character("c")
//
//var numberArray1:[Int] = [1,3,5,7,9]
//var numberArray2:[Int] = [2,4,6,8,9]
//let testString:String = "zifrfbctby"
//let treeNode = treeCreater(numberArray2, 0);
//
//class Solution {
//    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
//        guard let head = head else {
//            return nil
//        }
//        var newHeadNode: ListNode! = head;
//        var newTailNode: ListNode! = head;
//        var tailNode: ListNode! = head;
//        var linkLength = 1;
//        while tailNode.next != nil {
//            tailNode = tailNode.next;
//            linkLength += 1
//        }
//        if linkLength <= 1 {
//            return head;
//        }
//        let k = k % linkLength
//        for _ in 0 ..< abs(linkLength - k - 1)  {
//            if newTailNode.next != nil {
//                newTailNode = newTailNode.next
//            } else {
//                newTailNode = head
//            }
//        }
//        if newTailNode.next != nil {
//            newHeadNode = newTailNode.next
//            tailNode.next = head;
//            newTailNode.next = nil;
//            return newHeadNode;
//        } else {
//            return head;
//        }
//    }
//}


