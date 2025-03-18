class Solution {
  int reverse(int x) {
    bool isNegative = x < 0;
    String s = x.abs().toString();

    String reversed = s.split('').reversed.join('');

    int rvint;
    try {
      rvint = int.parse(reversed);
    } catch (e) {
      return 0;
    }
    if (isNegative) rvint = -rvint;

    if (rvint < -2147483648 || rvint > 2147483647) return 0;

    return rvint;
  }
}
