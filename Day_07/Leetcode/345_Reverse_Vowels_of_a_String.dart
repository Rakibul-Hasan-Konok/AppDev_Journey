class Solution {
 String reverseVowels(String s) {
    String vowels = "aeiouAEIOU";
    List<String> chars = s.split('');
    List<String> vowelList = [];

    for (String c in chars) {
      if (vowels.contains(c)) {
        vowelList.add(c);
      }
    }

    for (int i = 0; i < chars.length; i++) {
      if (vowels.contains(chars[i])) {
        chars[i] = vowelList.removeLast(); 
      }
    }

    return chars.join('');
  }
}
