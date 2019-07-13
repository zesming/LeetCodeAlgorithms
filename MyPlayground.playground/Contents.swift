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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard !nums.isEmpty else {
        return nil
    }
    
    let midIndex = (nums.count / 2)
    
    if midIndex == 0 {
        return TreeNode(nums.first!)
    } else if nums.count / 2 == 1 {
        let tree = TreeNode(nums[1])
        tree.left = TreeNode(nums[0])
        if nums.count == 3 {
            tree.right = TreeNode(nums[2])
        }
        
        return tree;
    } else {
        let leftNums = [Int](nums[0...(midIndex - 1)])
        let rightNums = [Int](nums[(midIndex + 1)...(nums.count - 1)])
        let leftTreeNode = sortedArrayToBST(leftNums)
        let rightTreeNode = sortedArrayToBST(rightNums)
        let tree = TreeNode(nums[midIndex])
        tree.left = leftTreeNode
        tree.right = rightTreeNode
        
        return tree
    }
}

let tree = sortedArrayToBST([-10,-3,0,5,9])
let left = tree?.left
let right = tree?.right
