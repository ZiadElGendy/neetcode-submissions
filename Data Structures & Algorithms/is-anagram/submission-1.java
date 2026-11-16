class Solution {
    public boolean isAnagram(String s, String t) {
        if (s.length() != t.length()) return false;

        HashMap<Character, Integer> sDict = new HashMap<>();
        HashMap<Character, Integer> tDict = new HashMap<>();
        
        for (int i = 0; i < s.length(); i++){
           sDict.put(s.charAt(i), sDict.getOrDefault(s.charAt(i), 0) + 1);
           tDict.put(t.charAt(i), tDict.getOrDefault(t.charAt(i), 0) + 1);
        } 

        return sDict.equals(tDict);
    }
}
