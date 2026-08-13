s = "engineering"
counter = 0
vowels = {'a', 'e', 'i', 'o', 'u'}

for letters in s:
    if letters in vowels:
        counter += 1


print("No. of volwels are - ",counter)        

TC: O(n)
SC: O(1)

# Explanation: I initialize a counter to zero and create a set containing the five vowels. 
# I then traverse the string once and check whether each character exists in the vowel set. 
# Since set lookup is O(1) on average, each character can be processed in constant time. 
# Therefore, the overall time complexity is O(n), and because I use only a fixed-size set and a counter, the auxiliary space complexity is O(1).
