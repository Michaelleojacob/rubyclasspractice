class Fish
    def self.general_overview()
        return("Fish are animals that live in the sea")
    end
end
p Fish.general_overview()
nemo = Fish.new
p nemo.general_overview() #=> does not work.

class Calc
    def add(x, y)
        x + y
    end
end

quickmaths = Calc.new
p quickmaths.add(1,3)

class Calc
    def self.add(x, y)
        x + y
    end
end
p Calc.add(1,3)

class Person
    def initialize(name)
        @name = name
    end
end
my_person_object = Perosn.new("Fred")

class Lion
    def initialize(name)
        @name = name
    end
    def return_lions_name
        return @name
    end
end
simba = Lion.new("Simba")
p simba.return_lions_name

class Celsius
    def initialize(temp)
        @temp = temp
    end
    def to_fahrenheit
        @temp * 1.8 + 32
    end
end
lolidk = Celsius.new(5)
p lolidk.to_fahrenheit

class Dog
    def initialize(name)
        @name = name
    end
    def bark
        "Woof!"
    end
end
spot = Dog.new("Spot")
p spot.bark

class Insect
    def initialize(age_in_days)
        @age_in_days = age_in_days
    end
    def age_in_years
        @age_in_days.to_f / 365
    end
end
ant = Insect.new(4)
p ant.age_in_years

class Dog
    def speak
        "woof woof"
    end
end
d = Dog.new
p d.speak

class Lamp
    def about_me
        "We brighten up people's lives"
    end
end
lolidk = Lamp.new
p lolidk.about_me

or

class Lamp
    def self.about_me
        "We brighten up people's lives"
    end
end
p Lamp.about_me

class Bottle
    def initialize(size)
        @size = size
    end
    def size
        @size
    end
end
lolidk = Bottle.new(24)
p lolidk.size

class Person
    def initialize(age)
        @age = age
    end
    def update_age(num)
        @age = num
    end
end
me = Person.new(28)
p me.update_age(29)

class Person
    def initialize(age)
    @age = age
    end
    def age=(new_age)
    @age = new_age
    end
    def age()
        return(@age)
    end
end
p = Person.new(24)
p.age  # returns 24
p.age=(42)  # update the @age instance variable
p.age  # now returns 42

module Clueless
    def funny
        "as if"
    end
end
class Actress
    include Clueless
end
alicia = Actress.new
p alicia.funny

module HappyHappy
    def say_something
        "Happy happy, joy joy, cringe"
    end
end
class Person
    include HappyHappy
end
class Cow
    include HappyHappy
end
lolidk = Person.new
haha = Cow.new
p lolidk.say_something
p haha.say_something

module MathHelper
    def times_two(num)
        num * 2
    end
end
class Homework
    include MathHelper
end
quickmaths = Homework.new
p quickmaths.times_two(6)

class Mammal
    def heartbeat?
        true
    end
end
class Dog < Mammal
end
spike = Dog.new
p spike.heartbeat?

class Box
end
my_box = Box.new
p my_box.methods.count

class BaseballPlayer
    def initialize(hits, walks, at_bats)
        @hits = hits
        @walks = walks
        @at_bats = at_bats
    end
    def batting_avg
        @hits / @at_bats.to_f
    end
    def on_base_percentage
        (@hits + @walks) / @at_bats
    end
end
absoluteunit = BaseballPlayer.new(30, 20, 10)
p absoluteunit.batting_avg
p absoluteunit.on_base_percentage

class Person
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end
    def display_first_name
        @first_name
    end
    def display_last_name
        @last_name
    end
    def full_name
        "#{@first_name} #{@last_name}"
    end
end
me = Person.new("michael", "jacob")
p me.display_first_name
p me.display_last_name
p me.full_name

module MathHelpers
    def exponent(x, y)
        x**y
    end
end
class Calc
    include MathHelpers
    def square_root(num)
        exponent(num, 0.5)
    end
end
lolidk = Calc.new
p lolidk.square_root(9)
p lolidk.square_root(49)
