//
//  main.swift
//  SwiftCodeTest
//
//  Created by yang.yang on 2017/11/8.
//  Copyright © 2017年 yang.yang. All rights reserved.
//

import Foundation

class PriorityHeap {
    //最大堆
    var arr: [Int]
    init() {
        arr = [Int]()
    }
    func append(_ element: Int) -> Void {
        arr.insert(element, at: 0)
        heapAdjust()
    }
    func heapAdjust() -> Void {
        var i = 0
        while i < arr.count / 2 {
            let child1 = i * 2 + 1, child2 = i * 2 + 2
            
        }
    }
}

class Solution {
    func mincostToHireWorkers(_ quality: [Int], _ wage: [Int], _ K: Int) -> Double {
        if quality.count == 0 || wage.count == 0 || K == 0 || quality.count != wage.count || quality.count < K{
            return 0
        }
        var result: Double = Double(Int.max)
        var tupleArray = [(Double, Int)]()
        for i in 0 ..< quality.count {
            tupleArray.append((Double(wage[i]) / Double(quality[i]), quality[i]))
        }
        tupleArray.sort { (a, b) -> Bool in
            return a.0 < b.0
        }
        var qualitySum = 0
        var tempArray = [Int]()
        for (wq, quality) in tupleArray {
            if tempArray.count == K {
                qualitySum -= tempArray.removeFirst()
            }
            qualitySum += quality
            tempArray.append(quality)
            tempArray.sort(by: >)
            if tempArray.count == K {
                result = min(result, wq * Double(qualitySum))
            }
        }
        return result
    }
    
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        var result = 0
        var tempDict = Dictionary<Int, Int>()
        var tempArr = [Int]()
        tempArr.append(0)
        for num in nums {
            tempArr.append(tempArr.last! + num)
        }
        for num in tempArr {
            if tempDict[num - k] != nil {
                result += tempDict[num - k]!
            }
            if tempDict[num] == nil {
                tempDict[num] = 1
            } else {
                tempDict[num] = tempDict[num]! + 1
            }
        }
        return result
    }
}

func main() {
//    var pre = [1,8,6,2,5,4,8,3,7]
    var pre = [1,2,5,-2,-5,0,0,-1]
//    let island = [[0,1,0,0],[1,0,0,0],[0,0,0,1],[0,0,1,0]]
//    let triangle = [[2],[3,4],[6,5,7],[4,1,8,3]];
//    let quality = [10,20,5], wage = [70,50,30], K = 2
//var pre = [2,1]
//    let node = treeCreater(island)
//    let list = linkListCreater(pre)
    let solution = Solution();
//    let result = solution.mincostToHireWorkers(quality, wage, K)
    let result = solution.subarraySum(pre, 0)
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


