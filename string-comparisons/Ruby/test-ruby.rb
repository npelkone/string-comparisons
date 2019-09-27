string = File.read("../string-100m.txt")

# start = Time.now
# start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

# --------- regex 1 ---------
# string.scan(/bab{3}/)
# --------- regex 2 ---------
# string.scan(/bbbba+/)
# --------- regex 3 ---------
# string.scan(/bbbbb|aaaaa/).length
# --------- regex 4 ---------
# string.scan(/bab{3}|bbbba+/).length
# --------- regex 5 ---------
# string.scan(/(aaaaa|bbbbb)+/).length

# --------- concat ---------
# for i in 0..10000
#     string.concat('a')
# end
# puts string.encoding
# string.concat('a')

# --------- replace ---------
# string.gsub! 'abba', 'CCCC'

# --------- equals --------- 
# string2 = string.dup
# string2.concat('a')

# if string == string2
    
# else
    
# end

# --------- upper string ---------
# string.upcase

# --------- find first index of substring --------- 
# string.index('abba')

# --------- duplicate ---------
# s2 = string.dup
# s2.length

# --------- reverse string ---------
# string.reverse

# --------- sort ---------
# string.chars.sort.join


# finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# finish = Time.now


# open("../times-file.txt", "a") { |f|
#     f.puts((finish-start)*1000)
# }


