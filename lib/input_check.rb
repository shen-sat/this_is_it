class InputCheck
	attr_reader :plateau_x, :plateau_y, :start_pos_x, :start_pos_y, :start_pos_direction

	def plateau_check(string)
		if !string.match(/^\d\s\d$/)
			raise "incorrect plateau"
		else
			@plateau_x = string.split(" ")[0].to_i
			@plateau_y = string.split(" ")[1].to_i
		end
	end

	def start_pos_check(string)
		if !string.match(/^\d\s\d\s[NESWnesw]$/)
			raise "incorrect start position"
		else
			@start_pos_x = string.split(" ")[0].to_i
			@start_pos_y = string.split(" ")[1].to_i
			@start_pos_direction = string.split(" ")[2].upcase
		end
	end

	def instructions_check(string)
		if !string.match(/A-Z+/)
			raise "incorrect instructions"
		end
	end

end