

#Approach 1 
# Brute Force approach

s = "madam1"
left_right = ""
right_left = ""
for i in range(len(s)-1,-1,-1):
    right_left = right_left + s[i]

# for i in range(len(s)):
#     left_right = left_right + s[i]    
    
if right_left == s:
    print("String is palindrome")
else:
    print("String is not a palindrome")

# TC: O(n^2) 
# SC: O(n)   

# Explanation: Initializing 2 variables and the assinging values by running a loop on the array and appending the result to the variable hence TC is O(n^2) and SC is O(n). 


#Approach 2
# Two pointers technique