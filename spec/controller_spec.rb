require 'controller'
require 'plateau'
=begin
describe 'controller' do
	it 'should create a plateau object with x and y variables' do 
		controller = Controller.new
		controller.read_plateau("5 5")
		expect(controller.plateau.x).to eq(5)
		expect(controller.plateau.y).to eq(5)
	end

	it 'should take in the correct start_pos and instructions and return the correct result' do
		controller = Controller.new
		controller.read_commands("1 2 N", "LMLMLMLMM")
		expect(controller.rover.final_position).to eq("13N")
	end
end]
=end