nums = [4, 8, 2, 10, 3, 19]
largest = nums[0]
for num in nums:
    if num > largest:
        largest = num

print(largest)


# TC = O(n) - I am traversing the array once so the time complexity
# SC = O(1) - I am using constant space so the space complexity will be 0(1)

# Interview explanation: I initialize the largest with the 0th index value and the traverse the index once and compare every element with the largest 
# if it is largest the overwrite the existing value. Since I am traversing the array once the time complexity is O(n) 
# and I am using the constant amount of extra space the space complexity is O(1)