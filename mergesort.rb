def split_array(in_array)
	# returns two arrays corresponding to
	# the top and bottom part of inarray
	# returns nil for an empty subarray
	n = in_array.length
	if n == 0
		return nil,nil
	end
	if n == 1
		left = in_array
		right = nil
	elsif n == 2
		left = [in_array[0]]
		right = [in_array[1]]
	else
		half = (n/2) -1
		left = in_array[0..half]
		right = in_array[half+1 .. -1]
	end	
	return left,right
end

def merge_arrays(left,right)
	# merges the two sorted arrays, left and right,
	# into a single sorted result array
	result = []
	left_end = (left.length) -1
	right_end = (right.length) - 1
	l_pos = 0
	r_pos = 0
	while l_pos <= left_end && r_pos <= right_end do 
		a = left[l_pos]
		b = right[r_pos]
		if a <= b
			result << a
			l_pos += 1
		else
			result << b
			r_pos += 1
		end
	end
	if l_pos > left_end # no left remains, copy rest of right
		result += right[r_pos .. -1]
	else 
		result += left[l_pos .. -1]
	end
	result
end

def merge_sort(in_array)
	if in_array.length <= 1
		return in_array
	else
		left, right = split_array(in_array)
		a = merge_sort(left)
		b = merge_sort(right)
		result = merge_arrays(a,b)
		return result
    end
end