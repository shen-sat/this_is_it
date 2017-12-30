class InputCheck
	attr_reader :plateau_x, :plateau_y

	def plateau_check(string)
		if !string.match(/^\d\s\d$/)
			raise "incorrect plateau"
		else
			@plateau_x = string.split(" ")[0].to_i
			@plateau_y = string.split(" ")[1].to_i
		end
	end

end