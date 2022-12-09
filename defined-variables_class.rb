# Программа, демонстрирующая понятие области видимости переменных в классах
# Определим  переменную "variable"
variable = 1
# Объявим класс "MyClass" и напишем конструктор, который создает переменную экземпляра "@variable"
class MyClass
  def initialize
    @variable = 2
  end
  # Напишем метод, который проверяет объявлены ли переменные "variable" и "@variable"
  def check_variables
    puts "В классе"
    puts "Переменная '@variable' : #{defined?(@variable)}"
    puts "Переменная 'variable' : #{defined?(variable)}"
  end
end

# Создадим экземпляр класса "MyClass"
class_my_class = MyClass.new
class_my_class.check_variables

# Посмотрим какие переменные определены вне класс
puts "Вне класса"
puts "Переменная '@variable' : #{defined?(@variable)}"
puts "Переменная 'variable' : #{defined?(variable)}"
