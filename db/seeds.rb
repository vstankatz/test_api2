# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

Quote.destroy_all
  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    20.times do |i|
      quote = Quote.create!(
        character: Faker::TvShows::FamilyGuy.character,
        quote: Faker::TvShows::FamilyGuy.quote
      )
      puts "Quote #{i}: Character is #{quote.character} and quotation is '#{quote.quote}'."
  end
end
end

Seed.begin
