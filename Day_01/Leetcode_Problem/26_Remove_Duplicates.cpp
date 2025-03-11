//https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150
//Easy

#include <bits/stdc++.h>
using namespace std;

class Solution {
public:
    int removeDuplicates(vector<int>& nums){
        set<int> st(nums.begin(), nums.end()); 
            
            int i = st.size();

            nums.assign(st.begin(),st.end());
            return i; 
    };
};


