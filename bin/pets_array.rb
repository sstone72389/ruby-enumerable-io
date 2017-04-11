# frozen_string_literal: true
require_relative '../lib/pets.rb'

pets = Pets.new('data/pets.csv').pets

total = pets.count.to_f

cats = pets.select { |pet| pet.kind == 'cat' }
cat_count = cats.length
cat_percentage = cat_count / total
p "cat total: #{cat_count}, total: #{total}, \
   female_percentage: #{cat_percentage}"

older_cats = cats.select { |cat| cat.age > 10 }.length
p "older cats: #{older_cats}"

younger_cats = cats.select { |cat| cat.age < 1 }.length
p "younger cats: #{younger_cats}"

average_cat_age =
  cats.reduce(0) { |acc, elem| acc + elem.age } / total
p "avg cat age: #{average_cat_age}"
