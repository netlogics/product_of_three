class Product
  def calculate ary
    # O(n log n) - this is an assumption that ruby's sort implementation is using quick sort
    # with a random pivot. I haven't looked up the rb_ary_sort_bang(ary); method that ruby uses
    # internally for sorting.
    sorted_ary = ary.sort

    # O(1) - just accessing a constant number of elements from the array
    max_three = sorted_ary[-3..-1]

    # O(1) - sum a constant number of elements form the array
    min_two = sorted_ary[0..1].map &:abs

    # O(1) - N doesn't change. Only 5 total elements are ever iterated
    highest_nums = (min_two + max_three).max(3)

    # O(1) - Same as above. N doesn't change so the time complexity is constant
    highest_nums.reduce :*
  end
end
