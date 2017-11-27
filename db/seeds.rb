# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating users...'
clarisse = User.create!(first_name: "clarisse", last_name: "Faure", email: "cla@gmail.com", password: "123456")
arnaud = User.create!(first_name: "arnaud", last_name: "de valbray", email: "arno@gmail.com", password: "123456")
marie = User.create!(first_name: "marie", last_name: "blaise", email: "marie@gmail.com", password: "123456")

puts 'Creating shetlands...'
shetlands_attributes = [
  {
    user: clarisse,
    name:  "PonyBabe",
    price_per_hour:    40,
    age:  8,
    description: "PonyBabe est un poney magique à 3 pattes. Il déteste les enfants et si vous lui tirez la queue, il explose.",
    location: "Neverland"
  },

  {
    user: marie,
    name:  "MadMax",
    price_per_hour:    50,
    age:  2,
    description: "Cheval solitaire et grincheux. Il aime les températures extrêmes et saura satisfaire tous vos désirs",
    location: "Désert de Gobie"
  },

   {
    user: arnaud,
    name:  "JellyFish",
    price_per_hour:    12,
    age:  13,
    description: "JellyFish, est un poney poisson, aussi à l'aise dans le jardin de votre grand mère que sous l'eau. Scaphandre en option",
    location: "Faille Atlantique"
  },

  {
    user: clarisse,
    name:  "Rocketsabot",
    price_per_hour:    3,
    age:  10,
    description: "Attention shetland fougueux, pour les meilleurs pilotes de petits chevaux. Détenteur du record du monde du plus haut saut d'obstacle à Shetland",
    location: "Mount Everest"
  },

  {
    user: marie,
    name:  "SexyBill",
    price_per_hour:    14,
    age:  7,
    description: "The séducteur. Passe son temps à se coiffer, curer, brosser, laver. Sa sellerie est pleine. Courtise toutes les shetlandes du pré. Et dès qu'on a le dos tourné...",
    location: "Beverly-hills"
  },

  {
    user: clarisse,
    name: "Jackass",
    price_per_hour: 7,
    age: 15,
    description: "A première vue, c'est un vieux canasson croulant. Malgré le poids des années, il est très joueur et aime beaucoup les carottes. Attention aux doigts baladeurs",
    location: "Pontonx-sur-l'Adour"
  },
  {
    user: clarisse,
    name: "Ursule",
    price_per_hour: 24,
    age: 6,
    description: "Magnifique jument douce voire divine, elle a très peur des enfants et autres créatures sauvages. A manier avec précaution en balade extérieure",
    location: "Mongolie",
  },
  {
    user: clarisse,
    name: "Satan",
    price_per_hour: 20,
    age: 8,
    description: "Etalon noir fougueux et ténébreux. Rend toutes les juments et jeunes pouliches complètement dingues.",
    location: "Malin-sur-Erdre",
  },
  {
    user: clarisse,
    name: "Pissaulit",
    price_per_hour: 30,
    age: 3,
    description: "Jeune shetland dévergondé, n'hésitera pas à envoyer valdinguer tout cavalier inexpérimenté",
    location: "Fou-la-Garonne",
  },
  {
    user: clarisse,
    name: "Puduc",
    price_per_hour: 20,
    age: 6,
    description: "Malgré ses airs grognons et sa crinière emmêlée, Puduc est un adorable compagnon pour toutes vos sorties à la campagne. Attention : phobique de l'eau et des douches post-balades.",
    location: "Camembert",
  },
  {
    user: clarisse,
    name: "Alfred",
    price_per_hour: 27,
    age: 9,
    description: "Merveilleux shetland de sang pur. Descend d'une lignée royale. Docile et calme",
    location: "Versailles",
  }
]
Shetland.create!(shetlands_attributes)
puts 'finished!'
