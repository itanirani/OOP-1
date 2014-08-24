class Rover

	def initialize(x, y, direction)
		@x = x
		@y = y
		@d = direction
	end

	def move_forward
		if @d == "N"
			@y = @y + 1
		elsif @d == "E"
			@x = @x + 1
		elsif @d == "W"
			@x = @x - 1
		else @d == "S"
			@y = @y -1
		end
	end

	def turn_right
		if @d == "N"
			@d = "E"
		elsif @d == "E"
			@d = "S"
		elsif @d == "W"
			@d = "N"
		elsif @d == "S"
			@d = "W"
		end
	end

	def turn_left
		if @d == "N"
			@d = "W"
		elsif @d == "E"
			@d = "N"
		elsif @d == "W"
			@d = "S"
		else @d == "S"
			@d = "E"
		end
	end

	def where_are_you
		puts "We are at #{@x}, #{@y} facing #{@d}"
	end

	def command
		puts "Please enter all of the rovers movement!"
		command_string = gets.chomp
		command_string.split(//).each do |command_character|
			if command_character == "L"
				turn_left
			elsif command_character == "R"
				turn_right
			elsif command_character == "M"
				move_forward
			end
			where_are_you
		end
	end
end

my_rover = Rover.new(3,3,"E")
my_rover.where_are_you
my_rover.command


"55 1 2 N LMLMLMMM"