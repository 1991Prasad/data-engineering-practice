nums = [1, 2, 2, 3, 4, 4, 5, 5, 5]

result = []


for num in nums:
    if num in result:
        pass
    else:
        result.append(num)

print(result)    

# TC: O(n)
# SC: O(n)

# To solve this problem I am initializing an empty list result. 
# After that, I am traversing the input list once and checking every element if it is present in the result then pass else append it.
# Since I am traversing the array once the TC is O(n) and since I am appending distinct element from input list into result the SC becomes O(n)




