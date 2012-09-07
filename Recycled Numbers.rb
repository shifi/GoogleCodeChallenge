#http://code.google.com/codejam/contest/1460488/dashboard#s=p2
def split_and_shift(number, size)
   $hash_num[number]=[]
   (1...size).each do |i|
    
    num_str = number.to_s.split('')
    num_str << num_str.shift(i)
    $hash_num[number] << num_str.join('').to_i
    
   end
end

br = 0
arr = []
File.open("C-small-practice.in") do |line|
  line.each do |i|
    arr << i.chomp.split(" ")
  end
end

arr.shift[0].to_i
(0...arr.size).each do |el|

  a = arr[el][0].to_i
  b = arr[el][1].to_i
  
(a..b).each do |i|
  $hash_num = {}
  (a..b).each do |j|
    if (j > i)
       split_and_shift(j, arr[el][0].length)
       if($hash_num[j].include?(i))
         br += 1
       end
    end
  end
end
p "Case ##{el+1}: #{br}"
br = 0
end

