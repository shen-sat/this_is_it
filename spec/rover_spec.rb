require 'rover'

describe 'rover' do 

	let(:data) {["L","M"]}
	let(:rover) {Rover.new(1, 2, "N", data)}

	it 'should handle four inputs' do 
		expect(rover.x).to eq(1)
		expect(rover.y).to eq(2)
		expect(rover.direction).to eq("N")
		expect(rover.instructions).to eq(data)
	end

	it 'should change the rover direction by 90 degrees for instruction L' do 
		rover = Rover.new(1, 2, "N", ["L"])
		rover.move
		expect(rover.direction).to eq("W")
	end

	it 'should change the rover direction from N to E for instruction R' do 
		rover = Rover.new(1, 2, "E", ["R"])
		rover.move
		expect(rover.direction).to eq("S")
	end

	it 'should change move forward by one unit for instruction M' do 
		rover = Rover.new(1, 2, "N", ["M"])
		rover.move
		expect(rover.y).to eq(3)
		rover = Rover.new(1, 2, "E", ["M"])
		rover.move
		expect(rover.x).to eq(2)
		rover = Rover.new(1, 2, "S", ["M"])
		rover.move
		expect(rover.y).to eq(1)
		rover = Rover.new(1, 2, "W", ["M"])
		rover.move
		expect(rover.x).to eq(0)
	end

	it 'should return final position of 13N for the input 12N LMLMLMLMM' do 
		rover = Rover.new(1, 2, "N", ["L", "M", "L", "M", "L", "M", "L", "M", "M"])
		rover.move
		expect(rover.final_position).to eq("13N")
	end

	it 'should return final position of 51E for the input 33E LMLMLMLMM' do 
		rover = Rover.new(3, 3, "E", ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"])
		rover.move
		expect(rover.final_position).to eq("51E")
	end

end