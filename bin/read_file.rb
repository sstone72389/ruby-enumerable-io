# frozen_string_literal: true

# script to read a file
#
raise 'Usage: ruby bin/read_file.rb <input_file>' if ARGV.empty?

input_file = ARGV[0]

File.open(input_file) do |file|
  file.each_with_index do |line, i|
    p "#{i}: #{line}"
  end
end
