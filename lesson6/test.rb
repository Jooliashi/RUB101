=begin
Problem:
        Given an array of n positive integers and a postive integer s,
        find the minimal length of a contiguous subarray of which the sum >= s.
        If there isn't one, return 0 instead.

miniSubLength([2, 3, 1, 2, 4, 3], 7) == 2 #[2, 3, 1, 2], [1, 2, 4], [4, 3]
0, array.size - 6, 0+6
1, 5
2, 4
6 --> [2, 3, 1, 2, 4, 3]
5 -->[2, 3, 1, 2, 4] / [3, 1, 2, 4, 3]
4 --> [2, 3, 1, 2] / [3, 1, 2, 4] / [1, 2, 4, 3]
....
1 --> every single element

length 1
miniSubLength([1, 10, 5, 2, 7], 9) == 1
miniSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
miniSubLength([1, 2, 4], 8) == 0

input: an array and a positive integer
output: an integer 0 or bigger
rules:
  take contiguous subarrays, find the sum, compare sum vs integer s, find the minimal length of those subarrays where sum >= s
  return 0 if none exists

logic:
Approach 1
  find all the subarrays, look at the sum that are bigger than s, compare their length
Approach 2
  compare the subarrays with length 1 first, find if there is any with sum bigger than s, if so, result will be 1, and then move on to subarrays with length 2 and so on
  if result returns none, then return 0

Algorithm:
initialize result = 0
iterate through the length from 1 to array size
  iterate through the array, setting each element as the start index
    calculate the sum of array from start index + length if it doesn't exceed array size limit
    compare the sum to integer s
    if in any case the sum is bigger than s
      result should equal to length
result

=end

def miniSubLength(arr, s)
   result = 0
   1.upto(arr.size) do |length|
     arr.each_with_index do |ele, index|
       if (index + length) <= (arr.size)
         current_sum = arr.slice(index,length).sum
         if current_sum >= s
           return result = length
         end
       end
     end
   end
   result
 end

 p miniSubLength([2, 3, 1, 2, 4, 3], 7) == 2 #[2, 3, 1, 2], [1, 2, 4], [4, 3]
 p miniSubLength([1, 10, 5, 2, 7], 9) == 1
 p miniSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
 p miniSubLength([1, 2, 4], 8) == 0

