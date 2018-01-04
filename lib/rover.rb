class Rover
	attr_reader :x, :y, :direction, :instructions
	
	def initialize(x,y,direction,instructions)
		@x = x
		@y = y
		@direction = direction
		@instructions = instructions
	end

	def move
		compass = ["N", "E", "S", "W"]
		instructions.each do |letter|
		i = compass.index(direction)
			case letter
				when "L"
					@direction = compass[(i - 1) % compass.length]
				when "R"
					@direction = compass[(i + 1) % compass.length]
				when "M"
					@y += 1 if direction == "N"
					@x += 1 if direction == "E"
					@y -= 1 if direction == "S"
					@x -= 1 if direction == "W"
			end
		end
	end

	def final_position
		return "#{x}#{y}#{direction}"
	end

end