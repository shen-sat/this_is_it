class Controller
	attr_accessor :plateau, :rover

	def read_plateau
		input_check = InputCheck.new
		@plateau = Plateau.new
		input_check.plateau_check(gets.chomp)
		plateau.x = input_check.plateau_x
		plateau.y = input_check.plateau_y
	end

	def read_commands
		input_check = InputCheck.new
		final_answer = []
		while 1
			start_input = gets.chomp
			break if start_input == ""
			input_check.start_pos_check(start_input)		
			input_check.instructions_check(gets.chomp)
			@rover = Rover.new(input_check.start_pos_x, input_check.start_pos_y, input_check.start_pos_direction, input_check.instructions)
			@rover.move
			final_answer.push @rover.final_position
		end
		
		final_answer.each {|answer| puts answer}
	end

	def run
		puts "Welcome. Please enter rover data:"
		begin
			read_plateau
			read_commands
		rescue Exception => err
			puts "#{err}. Please try again."
		end 
	end
end