# frozen_string_literal: true
require_relative '../lib/cities.rb'

cities = Cities.new.cities

print 'count: ', cities.count, "\n"
