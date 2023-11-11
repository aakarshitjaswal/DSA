import Foundation
public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }

class Solution {
   func averageOfSubtree(_ root: TreeNode?) -> Int {
       
       var res = 0
       
       func go(_ node: TreeNode? = root) -> (Int, Int) {
           guard let node = node else { return (0, 0) }
           
           let l = go(node.left)
           let r = go(node.right)
           
           var v = (node.val + l.0 + r.0, 1 + l.1 + r.1)
           if v.0 / v.1 == node.val { res += 1 }
           
           return v
       }
       
       go()
       
       return res
   }
}
