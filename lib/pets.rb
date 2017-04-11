# frozen_string_literal: true
require 'csv'
require_relative 'pet'

# Pet class
class Pets
  attr_reader :pets
  def initialize
    @pets = []
    CSV.foreach('data/pets.csv',
                headers: true,
                header_converters: :symbol) do |pet| # -> (h) { h.downcase.to_sym })
      @pets << Pet.new(pet.to_hash)
    end
  end
end
