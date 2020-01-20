def who_is_bigger(a ,b ,c)
	if a != nil && b != nil && c != nil
		return "a is bigger" if a > b && a > c
		return "b is bigger" if b > a && b > c
		return "c is bigger" if c > a && c > b
	else 
		return "nil detected"
	end
end

def reverse_upcase_noLTA(string)
	return string.reverse.upcase.delete("LTA")
end

def array_42(arr)
	return arr.include?(42)
end

def magic_array(arr)
	arr.flatten.sort.map{|x|x*2}.delete_if{|x|x%3 == 0}.uniq
end