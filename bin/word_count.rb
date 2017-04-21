# frozen_string_literal: true

# linter screaming

input_file = ARGV[0]

File.open(input_file) do |file|
  file.each_line do |line|
    arr = line.split(',')
    p arr.count
  end
end
