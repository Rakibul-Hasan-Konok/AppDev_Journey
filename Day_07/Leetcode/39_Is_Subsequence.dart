class Solution {
  bool isSubsequence(String s, String t) {
    int i = 0, j = 0;

    while (i < t.length && j < s.length) {
      if (s[j] == t[i]) {
        j++; 
      }
      i++; 
    }

    return j == s.length; 
  }
}