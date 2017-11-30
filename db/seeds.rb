# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Shetland.destroy_all
Reservation.destroy_all
User.destroy_all



puts 'Creating users...'
clarisse = User.create!(
  first_name: "clarisse", last_name: "Faure", email: "cla@gmail.com", password: "123456",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/ClarisseF"
)
arnaud = User.create!(
  first_name: "arnaud", last_name: "de valbray", email: "arno@gmail.com", password: "123456",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/Adevalbray"
)
marie = User.create!(
  first_name: "marie", last_name: "blaise", email: "marie@gmail.com", password: "123456",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/MBDIA"
)

puts 'Creating shetlands...'
shetlands_attributes = [
  {
    user: clarisse,
    name:  "PonyBabe",
    price_per_hour:    40,
    age:  8,
    description: "PonyBabe est un poney magique à 3 pattes. Il déteste les enfants et si vous lui tirez la queue, il explose.",
    location: "Neverland",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863342/snowflakes_u9u5qc.jpg",
  },

  {
    user: marie,
    name:  "MadMax",
    price_per_hour:    50,
    age:  2,
    description: "Cheval solitaire et grincheux. Il aime les températures extrêmes et saura satisfaire tous vos désirs",
    location: "Désert de Gobie",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863342/shet6_chw8rd.jpg",
  },

   {
    user: arnaud,
    name:  "JellyFish",
    price_per_hour:    12,
    age:  13,
    description: "JellyFish, est un poney poisson, aussi à l'aise dans le jardin de votre grand mère que sous l'eau. Scaphandre en option",
    location: "Faille Atlantique",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863342/shet5_rs8m4r.jpg"
  },

  {
    user: arnaud,
    name:  "Rocketsabot",
    price_per_hour:    3,
    age:  10,
    description: "Attention shetland fougueux, pour les meilleurs pilotes de petits chevaux. Détenteur du record du monde du plus haut saut d'obstacle à Shetland",
    location: "Mount Everest",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/shet4_qvgzie.jpg"
  },

  {
    user: arnaud,
    name:  "SexyBill",
    price_per_hour:    14,
    age:  7,
    description: "The séducteur. Passe son temps à se coiffer, curer, brosser, laver. Sa sellerie est pleine. Courtise toutes les shetlandes du pré. Et dès qu'on a le dos tourné...",
    location: "Beverly-hills",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/shet3_dxx9oj.jpg"
  },

  {
    user: clarisse,
    name: "Jackass",
    price_per_hour: 7,
    age: 15,
    description: "A première vue, c'est un vieux canasson croulant. Malgré le poids des années, il est très joueur et aime beaucoup les carottes. Attention aux doigts baladeurs",
    location: "Pontonx-sur-l'Adour",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/shet2_xpuxmc.jpg"
  },
  {
    user: clarisse,
    name: "Ursule",
    price_per_hour: 24,
    age: 6,
    description: "Magnifique jument douce voire divine, elle a très peur des enfants et autres créatures sauvages.",
    location: "Mongolie",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/shet1_hido5b.jpg"
  },
  {
    user: clarisse,
    name: "Satan",
    price_per_hour: 20,
    age: 8,
    description: "Etalon noir fougueux et ténébreux. Rend toutes les juments et jeunes pouliches complètement dingues.",
    location: "Malin-sur-Erdre",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/ponybabe.jepg_ucisbf.jpg"
  },
  {
    user: marie,
    name: "Pissaulit",
    price_per_hour: 30,
    age: 3,
    description: "Jeune shetland dévergondé, n'hésitera pas à envoyer valdinguer tout cavalier inexpérimenté",
    location: "Fou-la-Garonne",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/mimi_dldh57.jpg"
  },
  {
    user: clarisse,
    name: "Puduc",
    price_per_hour: 20,
    age: 6,
    description: "Malgré ses airs grognons et sa crinière emmêlée, Puduc est un adorable compagnon pour toutes vos sorties à la campagne.",
    location: "Camembert",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/loveme.jepg_mmevno.jpg"
  },
  {
    user: marie,
    name: "Alfred",
    price_per_hour: 27,
    age: 9,
    description: "Merveilleux shetland de sang pur. Descend d'une lignée royale. Docile et calme",
    location: "Versailles",
    remote_photo_url: "http://res.cloudinary.com/dg5e0d3zq/image/upload/v1511863341/cutest_g7kw3w.jpg"
  }
]
Shetland.create!(shetlands_attributes)
puts 'finished!'
