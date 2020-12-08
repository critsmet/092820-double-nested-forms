# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planet.destroy_all
Alien.destroy_all
Colony.destroy_all

earth = Planet.create(name: "Earth", gas: false)
venus = Planet.create(name: "Venus", gas: true)

humans = Alien.create(name: "Human", population: 7000000000)
rakitzis = Alien.create(name: "Rakitzis", population: 3000000)

earth.aliens << humans

venus.aliens << humans
venus.aliens << rakitzis
