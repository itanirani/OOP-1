class Person 
	attr_accessor :name 
	def greeting 
		puts "hi my name is #{@name}"
	end 
end 
class Student < Person
	def learn 
		puts "I get it!"
	end 
end 
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end 
end 

chris= Instructor.new
chris.name= "chris"
puts chris.greeting

cristina= Student.new
cristina.name= "cristina"
puts cristina.greeting 

puts chris.teach
put cristina.teach #does not work because the teach method is not in the student class! only in the instructor class, therefore she will not be able to invoke it