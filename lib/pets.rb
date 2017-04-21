# frozen_string_literal: true

require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  def initialize
    @pets = []
    CSV.foreach('data/pets.csv', headers: true, header_converters: :symobol) do |pet|
      @pets << Pet.new(pet.to_hash)
    end
  end
end
