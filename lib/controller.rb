class Controller
	attr_accessor :plateau, :rover

	def read_plateau(string)
		input_check = InputCheck.new
		@plateau = Plateau.new
		input_check.plateau_check(string)
		plateau.x = input_check.plateau_x
		plateau.y = input_check.plateau_y
	end

	def read_commands(initial_pos, letters)
		input_check = InputCheck.new
		input_check.start_pos_check(initial_pos)
		input_check.instructions_check(letters)
		@rover = Rover.new(input_check.start_pos_x, input_check.start_pos_y, input_check.start_pos_direction, input_check.instructions)
		@rover.move
		@rover.final_position
	end

	def run
		puts "Welcome. Please enter rover data:"
		input_one = gets.chomp
		read_plateau(input_one)
		input_two = 0
		input_two = gets.chomp
		input_three = gets.chomp
		puts read_commands(input_two, input_three)
	end
end