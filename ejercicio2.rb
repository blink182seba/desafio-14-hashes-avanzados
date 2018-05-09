nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a = nombres.select do |nombre|
  nombre.length > 5
end
b = nombres.map do |nombre|
  nombre.downcase
end
c = nombres.select do |nombre|
  nombre.start_with?("P")
end
d = nombres.map do |nombre|
 nombre.length
end
e = nombres.map do |nombre|
  nombre.gsub(/[aeiou]/, '')
end
print a
puts ''
print b
puts ''
print c
puts ''
print d
puts ''
print e
