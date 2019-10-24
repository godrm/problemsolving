extension Solution {
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

//Solution().twoSum([2,3,4,10,1,5,9,7], 12)

/*
 O(n^2) -> O(n) -> O(1)로 만드는 방법에 대한 고민
 Dictionary를 쓰면 바로 찾을 수 있구나
 */
