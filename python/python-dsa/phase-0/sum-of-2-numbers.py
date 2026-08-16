# nums = [2, 7, 11, 16]
# target = 18

# left_point = 0
# right_index = len(nums)-1


# while left_point < right_index:
#     if nums[left_point] + nums[right_index] == target:
#         print(nums[left_point] , nums[right_index])
#         break
#     if nums[left_point] + nums[right_index] > target:
#         right_index -= 1
#     if nums[left_point] + nums[right_index] < target:
#         left_point += 1


nums = [3, 3]
target = 6

frequency = {}

for i in range(len(nums)):
    complement = target - nums[i]

    if complement in frequency:
        print(i,frequency[complement])
        break

    frequency[nums[i]] = i

# TC: O(n)
# SC: O(n)







