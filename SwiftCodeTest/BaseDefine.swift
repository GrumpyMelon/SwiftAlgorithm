//
//  BaseDefine.swift
//  SwiftCodeTest
//
//  Created by yang.yang on 2019/1/4.
//  Copyright © 2019 yang.yang. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public class Stack {
    var array: Array<Int>
    public init() {
        array = Array<Int>()
    }
    public func push(_ value: Int) -> Void {
        array.append(value)
    }
    public func pop() -> Int? {
        let last = array.last;
        array.removeLast();
        return last
    }
    public func isEmpty() -> Bool {
        return array.count == 0;
    }
}

public class Queue {
    var stack1: Stack
    var stack2: Stack
    
    public init() {
        stack1 = Stack();
        stack2 = Stack();
    }
    
    public func enQueue(_ value: Int) {
        stack1.push(value);
    }
    public func deQueue() -> Int? {
        if !stack2.isEmpty() {
            return stack2.pop()
        } else if stack1.isEmpty() {
            return nil
        } else {
            while !stack1.isEmpty() {
                stack2.push(stack1.pop()!)
            }
            return stack2.pop()
        }
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

