//https://leetcode.com/problems/remove-element/?envType=study-plan-v2&envId=top-interview-150
//Easy


class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((element)=>element==val);
    return nums.length;
  }
}