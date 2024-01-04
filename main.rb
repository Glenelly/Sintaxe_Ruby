#OUTPUT
p "Hello"
puts 'Hello, World!'
print 'Hello, World!'

#VARIAVEIS
name = "Mike"
age = 35
is_tall = true
gpa = 3.2

#OUTPUT + VARIAVEIS 
puts "Your name is #{name}"
puts "Your age is #{age}"
puts "Your gpa is #{gpa}"
puts "Are you tall? #{is_tall}"
puts "\n\n"

#TIPOS DE DADOS
puts "Your name is #{name.class}"
puts "Your age is #{age.class}"
puts "Your gpa is #{gpa.class}"
puts "Are you tall? #{is_tall.class}"
puts "\n\n"

#NUMERICOS 
puts "Your age is " + age.to_s
puts 3.14.to_f
puts 3.to_i
puts "3.0".to_s
puts 100 + "50".to_i
puts 100 + "50.99".to_f
puts "\n\n"


greeting = "Hello"
puts greeting.length
puts greeting[0]
puts greeting.include? "llo"
puts greeting.include? "z"
puts greeting[1,3]
puts "\n\n"

#FUNÇÕES NUMERICAS 
puts 2 * 3
puts 2 ** 3
puts 10 % 3
puts 2 + 3 * 4
puts 10 / 3.0
puts "\n\n"

num = 10
num += 100
puts num

num = -36.8
puts num.abs()
puts num.round()
puts num.ceil()
puts num.floor()

puts Math.sqrt(144)
puts Math.log(0)
puts "\n\n"

#INPUT E OUTPUT

puts "Enter your name: "
name = gets 
puts "Hello #{name}, how are you?"

puts "Enter first num: "
num1 = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f
puts "\n\n"

#ARRAYS
lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]

puts "\n"
puts lucky_numbers[2,3]
puts "\n"
puts lucky_numbers[2..4]
puts "\n"

puts lucky_numbers.length
puts "\n"

number_grid = [ [1,2] , [3,4] ]
number_grid[0][0] = 99

puts "\n"

puts number_grid[0][0]
puts number_grid[0][1]

friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevin")
puts "\n"

friends.pop
puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort 
puts "\n"

puts friends.include? "Oscar"
puts "\n"

#FUNÇÃO
def add_numbers(num1, num2=99)
  return num1 + num2
end

sum = add_numbers(1)
puts sum
puts "\n"

#CONDICIONAIS 
is_student = false 
is_smart = false 

if is_student and is_smart
  puts "You are a student"
elsif is_student and !is_smart
  puts "You are not a smart student"
else 
  puts "You are not a student and not smart"
end
puts "\n"

if 1 > 3
  puts "Number comparison was true"
else
  puts "Number comparison was false"
end

if "a" > "b"
  puts "String comparison was true"
else 
  puts "String comparison was false"
end
puts "\n"

#SWITCHS
my_grade = "A"
case my_grade
  when "A"
    puts "You pass"
  when "F"
    puts "You fail"
  else
    puts "Invalid grade"
end 
puts "\n"

#DICIONARIOS
test_grades = {
  #key      value
  "Andy" => "B+",
  :Stanley => "C",
  "Ryan" => "A",
  3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]
puts "\n"

#LAÇOS DE REPETIÇÃO
index = 1
while index <= 5
  puts index
  index += 1
end 
puts "\n"

for i in 0..5
  puts index 
end 
puts "\n"

5.times do |i|
  puts i
end
puts "\n"

lucky_nums = [4, 8, 15, 16, 23, 42]
for i in lucky_nums
  puts i
end
puts "\n"

lucky_nums.each do |i|
  puts i
end

#EXCEPTION

#num = 10 / 0
begin 
  num = 10 / 0
rescue
  puts "Error"
end

begin 
  puts bad_variable
  num = 10 / 0
rescue ZeroDivisionError
  puts "Error"
rescue
  puts "All other errors"
end
puts "\n"
#raise "Made Up Exception"

#CLASSES 
class Book 
  attr_accessor :title, :author

  def readBook()
    puts "Reading #{self.title} by #{self.author}"
  end 
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"

book1.readBook()
puts book1.title 
puts "\n"

#CLASSE CCOM CONSTRUTORES 
class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author 
  end

  def readBook()
    puts "Reading #{self.title} by #{self.author}"
  end
end

book1 = Book.new("Harry Potter", "JK Rowling")

puts book1.readBook
puts "\n"

#GET E SETTERS
class Boook
  attr_accessor :author

  def initialize(title, author)
    @title = title
    @author = author 
  end

  def title=(title)
    puts "Set"
    @title = title
  end

  def title
    puts "Get"
    return @title
  end
end

boook1 = Boook.new("Harry Potter", "JK Rowling")
puts boook1.title

puts "\n"


  class Chef
    def make_chicken
      puts "Chef faz frango"
    end
  end

  class ItalianChef < Chef
    def make_pasta
      puts "Chef italiano faz massa"
    end
  end

  # Criar uma instância de Chef
  my_chef = Chef.new
  my_chef.make_chicken

  # Criar uma instância de ItalianChef
  my_italian_chef = ItalianChef.new
  my_italian_chef.make_chicken
  my_italian_chef.make_pasta

#MAP
list.map {|item| item * 2}

#SELECT
list.select {|item| item % 2 == 0}

#REJECT 
list.REJECT {|item| item % 2 == 0}
