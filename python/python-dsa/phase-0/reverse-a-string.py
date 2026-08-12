#Approach 1

s = "hello"
new_s = ""
for i in range(len(s)-1,-1,-1):
    new_s = new_s + s[i]

# TC = O(n)
# SC = O(1)

# Explanation: I am initializing new_s to empty string then I am traversing the string once but in reverse directing and then appending it to new_s on by one.
# Since I am using constant space then space complexity will be O(1) 
    