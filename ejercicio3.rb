a = [{nombre:"Sebastian", edad:16, comuna:"Pudahuel", genero:"M"}, {nombre:"Maria", edad:23, comuna:"Pudahuel", genero:"F"}]
op = 0
c = []
print a

while op != 10
  puts '1.- Permite ingresar datos de las personas:'
  puts '2.- Permite editar los datos de la persona:'
  puts '3.- Permite eliminar una persona'
  puts '4.- Muestra la cantidad de personas ingresadas'
  puts '5.- Muestra las comunas de las personas ingresadas'
  puts '6.- Muestra una lista con las personas que tengan entre 20 y 25 años'
  puts '7.- Muestra la suma de las edades de todas las personas.'
  puts '8.- Muestra el promedio de las edades del grupo.'
  puts '9.- Muestra dos listas de personas, una por cada género.'
  puts '10.- Salir'
  op = gets.chomp.to_i
  case op
  when 1
    puts 'Ingrese nombre: '
    nom = gets.chomp
    puts 'Ingrese edad: '
    edad = gets.chomp.to_i
    puts 'Ingrese comuna'
    com = gets.chomp
    puts 'Ingrese genero'
    gen = gets.chomp
    b={nombre:nom, edad:edad, comuna:com, genero:gen}
    a.push(b)
    print a
  when 2
    puts 'Ingrese el nombre de la persona que quiere editar'
    edit = gets.chomp
    a.each do |i|
      i.each do |key, values|
        if values == edit
          puts 'Ingrese nombre: '
          nom = gets.chomp
          puts 'Ingrese edad: '
          edad = gets.chomp
          puts 'Ingrese comuna'
          com = gets.chomp
          puts 'Ingrese genero'
          gen = gets.chomp
          i[:nombre] = nom
          i[:edad] = edad
          i[:comuna] = com
          i[:genero] = gen
        end
      end
    end
    print a
    puts ''
  when 3
    puts 'Ingrese el nombre de la persona que quiere eliminar'
    eli = gets.chomp
    a.each do |i|
      i.each do |key, values|
        if values == eli
          a.delete(i)
        end
      end
    end
    print a
  when 4
    i = 0
    a.each do
      i += 1
    end
    puts "La cantidad de personas ingresadas son: #{i}"
  when 5
    a.each do |i|
      i.each do |key, values|
      c.push(values)  if key == :comuna
      end
    end
    print c
    puts ''
  when 6
    a.each do |i|
      i.each do |key, values|
        puts values if ((key == :edad) && ((values >= 20) && (values <= 25)))
      end
    end
  when 7
    s = 0
    a.each do |i|
      i.each do |key, values|
        s += values if key == :edad
      end
    end
    puts s
  when 8
    s = 0
    j = 0
    a.each do |i|
      i.each do |key, values|
        if key == :edad
          s += values
          j += 1
        end
      end
    end
    puts "El promedio de edades es #{s / j}"
  when 9
    m = []
    f = []
    a.each do |i|
      i.each do |key, values|
        if key == :genero && values == "F"
          f.push(i)
        elsif key == :genero && values == "M"
          m.push(i)
        end
      end
    end
    puts 'Hombres'
    print m
    puts ''
    puts 'Mujeres'
    print f
    puts ''
  end
end
