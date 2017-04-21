# frozen_string_literal: true
# linter screaming

input_file = ARGV[0]

File.open(input_file) do |file|
  file.each_with_index do |line, i|
    p "#{i}:#{line}"
  end
end
