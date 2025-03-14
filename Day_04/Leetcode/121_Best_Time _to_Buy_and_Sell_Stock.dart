//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/?envType=study-plan-v2&envId=top-interview-150
//Easy
class Solution {
  int maxProfit(List<int> prices) {
    int max=0,min=prices[0],k;
    for(int i=1;i<prices.length;i++){
        k=prices[i]-min;
        if(min>prices[i]) min=prices[i];
        if(k>max) max=k;
    }
    return max;
  }
}