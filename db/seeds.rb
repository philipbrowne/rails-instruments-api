# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

instruments = Instrument.create([{ 
    name: "French Horn",
    family: "Brass",
    price: 12999.00
  }, { 
    name: "Trombone",
    family: "Brass",
    price: 2999.99
  }, {name: "Violin", family: "String", price: 24999.99}])

end