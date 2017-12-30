require 'input_check'

describe 'plateau input check' do 
	it 'should not accept input without spaces' do 
		input_check = InputCheck.new
		expect{input_check.plateau_check("55")}.to raise_error("incorrect plateau")
	end

	it 'should not accept three numbers with spaces' do 
		input_check = InputCheck.new
		expect{input_check.plateau_check("5 5 5")}.to raise_error("incorrect plateau")
	end

	it 'should not accept one number' do 
		input_check = InputCheck.new
		expect{input_check.plateau_check("5")}.to raise_error("incorrect plateau")
	end

	it 'should not accept letters' do 
		input_check = InputCheck.new
		expect{input_check.plateau_check("A b")}.to raise_error("incorrect plateau")
	end

	it 'should assign correct input to plateau_x and plateau_y' do 
		input_check = InputCheck.new
		input_check.plateau_check("5 5")
		expect(input_check.plateau_x).to eq(5)
		expect(input_check.plateau_y).to eq(5)
	end
	
end

describe 'starting position input check' do 
	
	it 'should not accept input with no spaces' do 
		input_check = InputCheck.new
		expect{input_check.start_pos_check("12N")}.to raise_error("incorrect start position")
	end

	it 'should only accept only accept two numbers followed by a letter' do 
		input_check = InputCheck.new
		expect{input_check.start_pos_check("1 N")}.to raise_error("incorrect start position")
		expect{input_check.start_pos_check("1 2 N N")}.to raise_error("incorrect start position")
		expect{input_check.start_pos_check("1 2 1")}.to raise_error("incorrect start position")
		expect{input_check.start_pos_check("N N N")}.to raise_error("incorrect start position")
	end

	it 'should only accept letters N, E, S, W as the last character' do 
		input_check = InputCheck.new
		expect{input_check.start_pos_check("1 2 A")}.to raise_error("incorrect start position")
	end
	
	it 'should assign start_pos_x to first character for correct input' do 
		input_check = InputCheck.new
		input_check.start_pos_check("1 2 N")
		expect(input_check.start_pos_x).to eq(1)
	end

	it 'should assign start_pos_y to second character for correct input' do 
		input_check = InputCheck.new
		input_check.start_pos_check("1 2 N")
		expect(input_check.start_pos_y).to eq(2)
	end

	it 'should assign start_pos_direction to third character for correct input' do 
		input_check = InputCheck.new
		input_check.start_pos_check("1 2 N")
		expect(input_check.start_pos_direction).to eq("N")
	end

	it 'should accept small caps' do 
		input_check = InputCheck.new
		input_check.start_pos_check("1 2 n")
		expect(input_check.start_pos_direction).to eq("N")
	end

end

describe 'instruction input check' do

	it 'should only accept letters LMR with no spaces anywhere' do 
		input_check = InputCheck.new
		expect{input_check.instructions_check("L M R")}.to raise_error("incorrect instructions")

	end  
end
