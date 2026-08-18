nums = [0, 1, 2, 0, 3, 9, 81 , 0]

current = 0
positional = 0

while positional < len(nums):

    if nums[positional] != 0:
        nums[current],nums[positional] = nums[positional],nums[current]
        current += 1


    positional += 1 

    

        

print(nums)

# TC: O(n)
# SC: O(1)

