//https://leetcode.com/problems/majority-element/

//Easy



#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int majorityElement(vector<int>& nums) {
        int n=nums.size();
        map<int,int> mp;
        for(auto u:nums) mp[u]++;
        int ans=-1,index=-1;
        for(auto u: mp){
            if(u.second>ans){
                ans=u.second;
                index=u.first;
            }

        }
        return index;

    }
};