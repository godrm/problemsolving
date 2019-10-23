class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for leftIndex in nums.startIndex..<nums.endIndex-1 {
            for rightIndex in leftIndex+1..<nums.endIndex {
                guard leftIndex != rightIndex else { continue }
                if nums[leftIndex] + nums[rightIndex] == target {
                    return [leftIndex, rightIndex]
                }
            }
        }
        return []
    }
}

Solution().twoSum([2,3,4,10,1,5,9,7], 12)

