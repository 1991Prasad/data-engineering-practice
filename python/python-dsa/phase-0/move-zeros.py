nums = [0, 0, 0, 0, 1, 1, 2, 0, 3, 9, 81 ,0]

current = 0
positional = 0

while current < len(nums):

    if nums[current] != 0:
        nums[current],nums[positional] = nums[positional],nums[current]
        positional += 1


    current += 1 

    

        

print(nums)

# TC: O(n)
# SC: O(1)

