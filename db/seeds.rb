# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

buddy = Pet.create({name: "Buddy", species: "Dog", breed: "Bichon Frise", age: 16, weight: 12, user_id: 9})
luna = Pet.create({name: "Luna", species: "Dog", breed: "Springer Spaniel", age: 3, weight: 25, user_id: 9})
mandy = Pet.create({name: "Mandy", species: "Dog", breed: "Golden Retriever", age: 3, weight: 45, user_id: 9})
