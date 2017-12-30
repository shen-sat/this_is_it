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