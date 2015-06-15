

# 1.Hill
# Given an array of integer elements
# Your task is to
#         write a function that finds the minimum value X that makes possible the following: generate a new array that is sorted in strictly ascending order by increasing or decreasing each of the elements of the initial array with integer values in the [0, X] range.
# o        Example: Having the initial array [5, 4, 3, 2, 8] the minimum value for X is 3. Decrease the first element (5) by 3, decrease the second one (4) by 1, increase the third one (3) by 1, increase the forth one (2) by 3 and do nothing to the last one (8). In the end we obtain the array [2, 3, 4, 5, 8] which is sorted in strictly ascending order.
#         print the result X to the standard output (stdout)
# Note that your function will receive the following arguments:
#         v
# o        which is the array of integers
# Data constraints
#         numbers are in ascending order when arranged from the smallest to the largest number
#         strictly ascending order means that each element is greater than the preceding one (e.g. [1, 2, 2, 3] is NOT strictly ascending order)
#         the length of the array will not exceed 5000
#         the elements of any of the arrays are integer numbers in the [1, 231 -1] range
# Efficiency constraints
#         your function is expected to print the result in less than 2 seconds



def hill(array_set)
  minimum = array_set[0]
  maximum = array_set[0]

  i = 0
  while i < array_set.length
    minimum = array_set[i] if array_set[i] < minimum
    maximum = array_set[i] if array_set[i] > maximum
  i += 1
  end

  (maximum - minimum).fdiv(2).ceil
end

first = Time.now
p hill([5,4,3,0,8])
second = Time.now


p (second - first).round()
# p hill([5,4,3,2,8])

# p hill([3,2,2])


# 2.Deviation
# Given an array of integer elements and an integer d please consider all the sequences of d consecutive elements in the array. For each sequence we compute the difference between the maximum and the minimum value of the elements in that sequence and name it the deviation.
# Your task is to
#         write a function that computes the maximum value among the deviations of all the sequences considered above
#         print the value the standard output (stdout)
# Note that your function will receive the following arguments:
#         v
# o        which is the array of integers
#         d
# o        which is an integer value giving the length of the sequences
# Data constraints
#         the array will contain up to 100,000 elements
#         all the elements in the array are integer numbers in the following range: [1, 231 -1]
#         the value of d will not exceed the length of the given array
# Efficiency constraints
#         your function is expected to print the result in less than 2 seconds
# Example
# Input        Output
# v: 6, 9, 4, 7, 4, 1
# d: 3        6
# Explanation
# The sequences of length 3 are:
#         6 9 4 having the median 5 (the minimum value in the sequence is 4 and the maximum is 9)
#         9 4 7 having the median 5 (the minimum value in the sequence is 4 and the maximum is 9)
#         7 4 1 having the median 6 (the minimum value in the sequence is 1 and the maximum is 7)
#         The maximum value among all medians is 6


