//
//  main.swift
//  SwiftCodeTest
//
//  Created by yang.yang on 2017/11/8.
//  Copyright © 2017年 yang.yang. All rights reserved.
//

import Foundation
import CoreML
import JavaScriptCore

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func linkListCreater(_ dataArray: Array<Int>!) -> ListNode! {
    var headNode: ListNode?
    var node: ListNode?
    var nextNode: ListNode?
    for i in dataArray {
        if headNode == nil {
            headNode = ListNode(i)
            node = headNode;
            continue;
        }
        nextNode = ListNode(i)
        node?.next = nextNode;
        node = nextNode;
    }
    return headNode;
}

func treeCreater(_ dataArray: Array<Int>!, _ index: Int) -> TreeNode? {
    if (index < dataArray.count && dataArray[index] != -1) {
        var treeNode: TreeNode;
        //数组中-1 表示该节点为空
        treeNode = TreeNode(dataArray[index]);
        treeNode.left = treeCreater(dataArray, 2 * index + 1);  //将二叉树按照层序遍历, 依次标序号, 从0开始
        treeNode.right = treeCreater(dataArray, 2 * index + 2);
        return treeNode
    } else {
        return nil
    }
}

class Solution {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return head;
        }
        var head = head;
        var walker = head
        var tempNode = head
        var tempArray = Array<ListNode>()
        var i = 0
        while walker?.next != nil {
            if walker!.next!.val < walker!.val {
                tempNode = walker!.next;
                walker!.next = walker!.next!.next
            } else {
                tempArray.append(walker!)
                walker = walker?.next
            }
            i = 1
            if tempArray.count == 0 {
                tempNode?.next = head;
                head = tempNode;
                tempArray.append(tempNode!)
            } else {
                var lastNode = tempArray.first;
                while i < tempArray.count {
                    let currentNode = tempArray[i];
                    if currentNode.val > tempNode!.val {
                        lastNode?.next = tempNode;
                        tempNode?.next = currentNode;
                        break;
                    }
                    i += 1
                    lastNode = currentNode;
                }
                if lastNode!.val < tempNode!.val {
                    tempNode?.next = lastNode?.next
                    lastNode?.next = tempNode;
                }
            }
        }
        return head;
    }
}

let solution = Solution();


var stringArray:[String] = ["ale","apple","monkey","plea"]
var numberArray:[Int] = [2,1,4,5,7,1,2]

let numberArray3 = [[0,1,0,0],
                    [1,1,1,0],
                    [0,1,0,0],
                    [1,1,0,0]];
let kong = ListNode(2)
let listNode1 = linkListCreater([1])
let listNode2 = linkListCreater([9,2,1,8])
var array1:[Character] = ["a","b","d","f","y"]
let char1 = Character("c")

var numberArray1:[Int] = [1,3,5,7,9]
var numberArray2:[Int] = [2,4,6,8,9]
let testString:String = "zifrfbctby"
let treeNode = treeCreater(numberArray2, 0);
//print(solution.mergeArray(array1: numberArray1, array2: numberArray2))
print(solution.insertionSortList(listNode2))

var ocObject = OCCodeTest();
ocObject.cPlusBridge();


//获取js文件路径
//let jsPathString = "TempFiles/test.js"
//let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
//let fileURL = dir?.appendingPathComponent(jsPathString)
//
////创建JSContext对象
//var jsContext = JSContext.init();
//do {
//    //读取js代码
//    let jsString = try String(contentsOf: fileURL!, encoding: .utf8)
//    //解析JS代码
//    _ = jsContext?.evaluateScript(jsString)
//    //获取viewJson字段
//    let result = jsContext?.objectForKeyedSubscript("viewJson")
//    let resultJson = result?.call(withArguments: nil).toString()
//    let resultData = resultJson?.data(using: .utf8)
//    //转换为字典格式
//    let resultDict = try JSONSerialization.jsonObject(with: resultData!, options: .allowFragments) as? Dictionary<String, Any>
//    print(resultDict ?? 0);
//}
//catch {
//
//}

