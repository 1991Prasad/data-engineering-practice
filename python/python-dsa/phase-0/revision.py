# Find 1st and 2nd largest
# nums = [7, 2, 9, 4, 1, 10]

# largest = nums[0]
# second_largest = nums[0]
# third_largest = nums[0]
# for num in nums:
#     if num > largest:
#         second_largest = largest
#         largest = num
#     else: 
#         if num > second_largest and second_largest != largest:
#             third_largest = second_largest
#             second_largest = num


# print(largest)    
# print(second_largest)    


# reverse string
# s = "hello"
# reversed =""
# for i in range(len(s)-1,-1,-1):
#     reversed = reversed +s[i]
# print(reversed)

# count vowels
# s = "engineering"

# vowels = ("a","e","i","o","u")
# counter = 0

# for char in s:
#     if char in vowels:
#         counter = counter + 1

# print(counter)        


# #Remove Duplicates
# nums = [1, 2, 2, 3, 3, 4]

# seen = set()
# result = []

# for num in nums:
#     if num not in seen:
#         seen.add(num)
#         result.append(num)

# print(result)        

# # Frequency count
# nums = [1, 2, 2, 3, 1, 2]        

# frequency = {}

# for num in nums:
#     if num in frequency:
#         frequency[num] += 1
#     else:
#         frequency[num] = 1

# print(frequency)


# # First Non-Repeating Character

# s = "aabbcdde"

# freq={}

# for char in s:
#     if char in freq:
#         freq[char] += 1
#     else:
#         freq[char] = 1

# for char in freq:
#     if freq[char] == 1:
#         print(char)
#         break


# # Contains Duplicate
# nums = [1, 2, 3, 4]

# frequency = {}

# for num in nums:
#     if num in frequency:
#         frequency[num] += 1
#     else:
#         frequency[num] = 1


# for num in frequency:
#     if frequency[num]>1:
#         print(True)
#         break
# else:
#     print(False)

