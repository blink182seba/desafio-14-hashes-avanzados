 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 b = a.map do |num|
   num + 1
 end
 c = a.map do |num|
   num.to_f
 end
 d = a.map do |num|
   num.to_s
 end
 e = a.reject{ |num| num < 5}
 f = a.select{ |num| num > 5}
 g = a.inject(0){ |sum, num| sum + num}
print b
puts ''
print c
puts ''
print d
puts ''
print e
puts ''
print f
puts ''
print g
puts ''
print a.group_by{|num| num.even?}
pust ''
print a.group_by{|num| num > 6}
