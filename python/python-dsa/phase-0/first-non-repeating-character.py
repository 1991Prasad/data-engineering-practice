s = "aabbcdde"

frequency = {}

for char in s:
    if char in frequency:
        frequency[char] = frequency[char] + 1
    else:
        frequency[char] = 1

# print(min(frequency,key=frequency.get))

for char in frequency:
    if frequency[char] == 1:
        print(char)
        break


# TC: O(n)
# SC: O(n)

# I am traversing the the array once and checking if the key is present or not if present I am incrementing the value of key by one 
# Since I am traversing the array once it is O(n) while frequency in worst case will be all distinct key so SC will be O(n)



# Approach 2 using XOR where space can be O(1)

nums = [4, 1, 2, 1, 2]

result = 0

for num in nums:
    result = result ^ num

print(result)


