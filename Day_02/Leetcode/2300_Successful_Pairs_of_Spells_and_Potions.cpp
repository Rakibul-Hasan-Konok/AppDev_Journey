//2300. Successful Pairs of Spells and Potions
//mediam 
class Solution {
    public:
        vector<int> successfulPairs(vector<int>& spells, vector<int>& potions, long long success) {
            vector<int>ans;
            sort(potions.begin(),potions.end());
            for(int i=0;i<spells.size();i++){
                long long int target=ceil((double)success/spells[i]);
                
                int lb=lower_bound(potions.begin(), potions.end(), target) - potions.begin();
                int nm=potions.size()-lb;
                ans.push_back(nm);
                
                
            }
            return {ans}; 
        }
    };