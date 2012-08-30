
line = "3 0 8 23 22 21"
br = 0
surp_br = 0
arr_int = line.split.map(&:to_i)

print arr_int
puts

(3...(3+arr_int[0])).each do |i|
  
  
  if (arr_int[i]%3 != 0)
    prvi, drugi, treci = (arr_int[i]/3), (arr_int[i]/3), (arr_int[i]-((arr_int[i]/3)+(arr_int[i]/3)))
    prvi_d, drugi_d, treci_d = (arr_int[i]/3.0).ceil, (arr_int[i]/3.0).ceil, (arr_int[i]-((arr_int[i]/3.0).ceil+(arr_int[i]/3.0).ceil))
  end
  if (arr_int[i]%3 == 0)
    prvi, drugi, treci = arr_int[i]/3, arr_int[i]/3, arr_int[i]/3
    prvi_d, drugi_d, treci_d = (arr_int[i]/3) - 1, (arr_int[i]/3), (arr_int[i]/3) + 1
    
  end
  prvi_max = [prvi, drugi, treci].max
  drugi_max = [prvi_d, drugi_d, treci_d].max
    puts "#{arr_int[i]}: #{prvi} + #{drugi} + #{treci} | #{prvi_d} + #{drugi_d} + #{treci_d}  (#{[prvi, drugi, treci].max}), (#{[prvi_d, drugi_d, treci_d].max})"
    #puts "#{prvi_max} , #{drugi_max} , #{arr_int[2]}"
  if(prvi_max >= arr_int[2]) or (drugi_max >= arr_int[2])

    puts "dodajem zbog #{[prvi, drugi, treci].max} i #{[prvi_d, drugi_d, treci_d].max}"
    
  br += 1

  end
end
puts br