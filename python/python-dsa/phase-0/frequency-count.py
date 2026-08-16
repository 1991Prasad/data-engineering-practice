nums = [1, 2, 2, 3, 1, 4, 2, 3]

result = {}

for num in nums:
    if num in result:
        result[num] += 1
    else:
        result[num] = 1

print(result)

# TC = O(n)
# SC = O(n)

