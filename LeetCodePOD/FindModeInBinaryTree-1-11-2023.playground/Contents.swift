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

func findMode(_ root: TreeNode?) -> [Int] {
    
    var d = [Int: Int]()
    
    func count(_ root: TreeNode? = root) {
        guard let root = root else { return }

        d[root.val, default: 0] += 1

        count(root.left)
        count(root.right)
    }

    count()
    let m = d.values.max()!
    
    return d
        .filter { $0.value == m }
        .map { $0.key }
}
