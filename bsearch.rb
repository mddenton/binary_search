require 'rubygems'
require 'pry-debugger'
module ArrayUtil
   # If the array is empty return a result
    # Otherwise call your helper _bsearch method
     # If the start and end indeces are the same, search
    # that element and return
     # Otherwise, find the midpoint
       #
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array

  def self.bsearch(array, element)
   
    if array.length == 0
      return false
    else
      start_index=0
      end_index=array.length - 1
      self._bsearch(array, element, start_index, end_index)
    end
  end

  def self._bsearch(array, element, start_index, end_index)
   
    if start_index == end_index
      return array[start_index]==element
    end
    midpoint = start_index + (end_index - start_index) / 2
 
    if element < array[midpoint]
      return self._bsearch(array, element, start_index, midpoint)
    elsif element > array[midpoint]
      return self._bsearch(array, element, midpoint+1, end_index)
    else
      return true
    end
  end
end
