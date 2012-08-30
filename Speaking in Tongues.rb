arr_str = File.readlines("A-small-practice.in")
hash = Hash["y","a", "n","b", "f","c", "i","d", "c","e", "w","f", "l","g", "b","h", "k","i", "u","j", "o","k", "m","l", "x","m", "s","n", "e","o", "v","p", "z","q", "p","r", "d","s", "r","t", "j","u", "g","v", "t","w", "h","x", "a","y", "q","z"]

arr_str.each do |string|
  (0..(string.length)).each do |i|
    string[i] = hash[string[i]] if hash.include?(string[i])
  end
end

(1..arr_str[0].to_i).each do |i|
  puts "Case ##{i}: " + arr_str[i]
end
