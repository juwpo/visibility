if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Объявите переменную variable
# После чего объявите класс MyClass и напишите у него конструктор, который создаёт переменную экземпляра @variable
# Напишите у класса метод check_variables, который проверяет объявлены ли переменные variable и @variable
variable = 1

require_relative 'myclass.rb'

myclass = MyClass.new

puts myclass.check_variables

puts "Вне класса:"
puts "Переменная '@variable' : #{defined?(@variable)}"
puts "Переменная 'variable' : #{defined?(variable)}"



