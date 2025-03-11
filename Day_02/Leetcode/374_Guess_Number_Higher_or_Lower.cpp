//https://leetcode.com/problems/guess-number-higher-or-lower/?envType=study-plan-v2&envId=leetcode-75
//Easy
class Solution {
    public:
        int guessNumber(int n) {
          long long int left=0,right=n,mid,ans;
            mid=(left+right)>>1;
            ans=guess(mid);
            while(ans!=0){
                if(ans>0) left=mid+1;
                else right=mid-1;
                mid=(left+right)>>1;
                ans=guess(mid);
            }
            return mid;
        }
    };