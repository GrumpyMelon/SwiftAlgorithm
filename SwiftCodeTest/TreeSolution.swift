//
//  TreeSolution.swift
//  SwiftCodeTest
//
//  Created by yang.yang on 2019/1/5.
//  Copyright © 2019 yang.yang. All rights reserved.
//

import Foundation

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

public func treeCreater(_ dataArray: Array<Int>!) -> TreeNode? {
    return treeCreater(dataArray, 0)
}

public func treeCreater(_ dataArray: Array<Int>!, _ index: Int) -> TreeNode? {
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

public class TreeSolution {
    func enumerateTree(_ treeNode : TreeNode!) -> Void{
        //先序遍历，中 - 左 - 右
        var stack = Array<TreeNode>()
        stack.append(treeNode);
        while stack.count != 0 {
            var node: TreeNode? = stack.last;
            stack.remove(at: stack.count - 1)
            while node != nil {
                print(node!.val);
                if node?.right != nil {
                    stack.append(node!.right!)
                }
                node = node?.left
            }
        }
    }
    func enumerateTreeMid(_ treeNode : TreeNode!) -> Void {
        //中序遍历， 左 - 中 - 右
        var stack = Array<TreeNode>()
        var node: TreeNode? = treeNode;
        repeat {
            while node != nil {
                stack.append(node!)
                node = node!.left
            }
            node = stack.last;
            stack.removeLast()
            print(node!.val)
            node = node!.right;
        } while (stack.count != 0 || node != nil)
    }
    func enumerateTreeBehind(_ treeNode : TreeNode!) -> Void {
        //后序遍历， 左，右，中.
        var stack = Array<TreeNode>()
        var node: TreeNode? = treeNode;
        repeat {
            while node != nil {
                stack.append(node!)
                node = node?.right
            }
            node = stack.last;
            stack.removeLast()
            print(node!.val)
            node = node?.left
        } while stack.count != 0 || node != nil
    }
    func buildTreeFromPreAndPost(_ pre: [Int], _ post: [Int]) -> TreeNode? {
        //根据前序和后序遍历构造二叉树
        if pre.count == 0 || post.count == 0 {
            return nil;
        }
        let root = TreeNode(pre.first!)
        if pre.count >= 2 {
            let leftKey = pre[1]
            for (index, value) in post.enumerated() {
                if value == leftKey {
                    let leftNodeCount = index + 1
                    root.left = buildTreeFromPreAndPost(Array(pre[1 ..< leftNodeCount + 1]), Array(post[0 ..< leftNodeCount]))
                    root.right = buildTreeFromPreAndPost(Array(pre[leftNodeCount + 1 ..< pre.count]), Array(post[leftNodeCount ..< post.count - 1]))
                }
            }
        }
        return root
    }
    func buildTreeFromPreAndInorder(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        //根据前序和中序遍历构造二叉树
        if preorder.count == 0 || inorder.count == 0 {
            return nil
        }
        let keyValue = preorder.first!
        let root = TreeNode(keyValue)
        for (index, value) in inorder.enumerated() {
            if value == keyValue {
                root.left = buildTreeFromPreAndInorder(Array(preorder[1 ..< index + 1]), Array(inorder[0 ..< index]))
                root.right = buildTreeFromPreAndInorder(Array(preorder[index + 1 ..< preorder.count]), Array(inorder[index + 1 ..< inorder.count]))
            }
        }
        return root
    }
    public func buildTreeWithPaths(_ pathArray: Array<Array<Int>>) -> TreeNode? {
        return nil;
    }
}
