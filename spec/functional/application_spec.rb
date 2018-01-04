#require_relative "../../application.rb"
require 'Open3'

describe 'application' do

	it 'should run' do
		Open3.popen3('ruby application.rb') do |stdin, stdout, stderr, wait_thr|
			stdin.puts("5 5")
			#stdin.puts("1 2 N")
			#stdin.puts("LMLMLMLMM")
			text_to_console = "Welcome. Please enter rover data:\n"
			expect(stdout.read).to eq(text_to_console)
		end
		
		
	end
end