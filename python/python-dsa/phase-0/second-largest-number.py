nums = [4, 8, 2, 10, 3]

largest = nums[0]
second_largest = nums[0]

for num in nums:
    if num > largest:
        second_largest = largest
        largest = num

    elif num > second_largest and num != largest:
        second_largest = num


print("Largest:", largest)
print("Second Largest:", second_largest)


# TC = O(n)
# SC = O(1)

# To solve this problem I am first initializing 2 variables largest and second_largest with the value of 0th index and the I am traversing the array once 
# and comparing every element with the largest and 2nd largest value if I get greater value than the one stored I am replacing with the existing large Value.
# Since I am traversing the array once the TC is O(n) and since I am using constant space the SC is O(1) 