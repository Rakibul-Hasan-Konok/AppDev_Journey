class Solution {
  int lengthOfLastWord(String s) {
    int i = 0, len = s.length - 1;

    
    while (len >= 0 && s[len] == ' ') len--;

    while (len >= 0 && s[len] != ' ') {
      i++;
      len--;
    }

    return i;
  }
}
