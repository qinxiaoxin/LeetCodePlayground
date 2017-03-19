//: Playground - noun: a place where people can play

import UIKit

/* 问题
        给你两个链表，分别表示两个非负的整数。每个链表的节点表示一个整数位。
        为了方便计算，整数的低位在链表头，例如：123 在链表中的表示方式是：
        3 -> 2 -> 1
        现在给你两个这样结构的链表，请输出它们求和之后的结果。例如：
        输入: (2 -> 4 -> 1) + (5 -> 6 -> 1)
        输出: 7 -> 0 -> 3
 */

private class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

private class Solution0 {
    
    private static func getNodeValue(_ node: ListNode?) -> Int {
        return node.flatMap{ $0.val } ?? 0
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?)
        -> ListNode? {
            if l1 == nil || l2 == nil {
                return l1 ?? l2
            }
            
            var p1 = l1
            var p2 = l2
            
            let result: ListNode? = ListNode(0)
            var current = result
            var extra = 0
            
            while p1 != nil || p2 != nil || extra != 0 {
                var tot = Solution0.getNodeValue(p1) + Solution0.getNodeValue(p2) + extra
                extra = tot / 10
                tot = tot % 10
                
                let sum: ListNode? = ListNode(tot)
                current?.next = sum
                current = sum
                
                p1 = p1.flatMap{ $0.next }
                p2 = p2.flatMap{ $0.next }
            }
            
            return result?.next
            
    }
}

/* 问题
        给你一棵二叉树，请按层输出其的节点值，即：按从上到下，从左到右的顺序。
        例如，如果给你如下一棵二叉树：
 
             3
            / \
            9    20
                /  \
               15   7
 
        输出结果应该是：
            [
            [3],
            [9,20],
            [15,7]
            ]
 */

private class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

private class Solution1 {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        var result = [[TreeNode]]()
        var level = [TreeNode]()
        
        level.append(root)
        while level.count != 0 {
            result.append(level)
            var nextLevel = [TreeNode]()
            for node in level {
                if let leftNode = node.left {
                    nextLevel.append(leftNode)
                }
                if let rightNode = node.right {
                    nextLevel.append(rightNode)
                }
            }
            level = nextLevel
        }
        
        let ans = result.map { $0.map { $0.val }}
        return ans
    }
}
