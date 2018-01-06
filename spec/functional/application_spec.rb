#require_relative "../../application.rb"
require 'Open3'

describe 'application' do

	it 'should run with one input' do
		Open3.popen3('ruby application.rb') do |stdin, stdout, stderr, wait_thr|
			stdin.puts("5 5")
			stdin.puts("1 2 N")
			stdin.puts("LMLMLMLMM")
			stdin.puts("")
			text_to_console = "Welcome. Please enter rover data:\n" + "13N\n"
			expect(stdout.read).to eq(text_to_console)
		end
		
		
	end

		it 'should run with two inputs' do
		Open3.popen3('ruby application.rb') do |stdin, stdout, stderr, wait_thr|
			stdin.puts("5 5")
			stdin.puts("1 2 N")
			stdin.puts("LMLMLMLMM")
			stdin.puts("3 3 E")
			stdin.puts("MMRMMRMRRM")
			stdin.puts("")
			text_to_console = "Welcome. Please enter rover data:\n" + "13N\n" + "51E\n"
			expect(stdout.read).to eq(text_to_console)
		end
		
		
	end
end