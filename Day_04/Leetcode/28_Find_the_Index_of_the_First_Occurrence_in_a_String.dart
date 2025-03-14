//https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/?envType=study-plan-v2&envId=top-interview-150
//Easy



class Solution {
  int strStr(String haystack, String needle) {
    int n = haystack.length, m = needle.length;
    
    if (m == 0) return 0; 
    if (m > n) return -1; 

    for (int i = 0; i <= n - m; i++) {
      int j = 0;
      while (j < m && haystack[i + j] == needle[j]) {
        j++;
      }
      if (j == m) return i; 
    }

    return -1; 
  }
}