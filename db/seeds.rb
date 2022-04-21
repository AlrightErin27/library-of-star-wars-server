puts "🌱 Seeding universe..."
User.destroy_all
Creature.destroy_all
Pet.destroy_all
Alien.destroy_all

puts "Creating users..."
luke = User.create(username: "Luke")
padme = User.create(username: "Padme")
grogu = User.create(username: "Grogu")
han = User.create(username: "Han")
darth = User.create(username: "Darth")

puts "Creating creatures..."
porg = Creature.create(species_name: "Porg", description: "Porgs were a species of non-sentient birds. They were stocky in nature, with two short wings, flat, beakless faces, and two webbed feet. They could also run quite swiftly on the ground and were good at maneuvering into small spaces.", img_url: "https://static.wikia.nocookie.net/disney/images/a/aa/Porg.jpg/revision/latest/scale-to-width-down/1030?cb=20180103040758")
jawa = Creature.create(species_name: "Jawa", description: "What Jawas hid underneath their heavy robes was subject to much speculation from the colonists who settled on Tatooine, with rumors claiming they were giant rodents or devolved humans. Although Jawas were typically small, measuring only one meter, some of them were significantly taller than that. One of those abnormally gangly Jawas was almost as tall as a 3PO-series protocol droid, a model of protocol droid measuring 1.71 meters", img_url: "https://static.wikia.nocookie.net/disney/images/0/02/Jawa.jpg/revision/latest/scale-to-width-down/1032?cb=20191024002057")
ewok = Creature.create(species_name: "Ewok", description: "Ewoks were sentient humanoids, averaging about one meter in height. Omnivorous, they were covered in fur from head to toe, with brown and black as the most common colors. Most Ewoks had solid-colored fur, though a few sported stripes. Ewoks had large, bright eyes, small humanoid noses, and hands that possessed two fingers and an opposable thumb. Despite their small size, Ewoks were physically strong enough to overpower combat-trained humans", img_url: "https://static.wikia.nocookie.net/disney/images/c/c2/Ewok.jpg/revision/latest/scale-to-width-down/1032?cb=20191024001658")
hutt = Creature.create(species_name: "Hutt", description: "The Hutts were a sentient species of large gastropods[6] with short arms, wide cavernous mouths and huge eyes, who controlled a large space empire in Hutt Space. The species was said to originally hail from the planet Varl, but no planet by that name appeared on any Imperial star charts. Their adopted homeworld was Nal Hutta. Members of this species were often stereotyped as crime lords.", img_url: "https://static.wikia.nocookie.net/disney/images/4/44/Jabba.png/revision/latest/scale-to-width-down/1031?cb=20130430195617")
bantha = Creature.create(species_name: "Bantha", description: "Banthas were sturdy and easily domesticated mammals used as beasts of burden that were found all over the galaxy. The common bantha, or Bantha majorus, was the most commonly known species, with the other subspecies considered generally rare.", img_url: "https://static.wikia.nocookie.net/disney/images/a/a2/Bantha-ST.jpg/revision/latest?cb=20130604032107")
tauntaun = Creature.create(species_name: "Tauntaun", description: "Getting around the ice world of Hoth is a very dangerous proposition. Enter the tauntaun. When rebels chose the sub-freezing Hoth to build their hidden base, they relied on domesticated tauntauns for transportation during patrols. While the tauntauns skin was thick enough to withstand frigid temperatures far longer than similar beasts of burden in the Star Wars universe, even they could not always survive a full night in the elements without adequate shelter.", img_url: "https://starwarsblog.starwars.com/wp-content/uploads/sites/6/2017/08/star-wars-the-empire-strikes-back-tauntaun.jpg")

puts "Creating aliens..."
dragon = Alien.create(species_name: "Dragon", description: "A dragon is usually represented as a huge, bat-winged, fire-breathing, scaly lizard or snake with a barbed tail. The belief in these creatures apparently arose without the slightest knowledge on the part of the ancients of dinosaurs, which have some remblance to dragons.", user_id: luke.id, user: luke)
unicorn = Alien.create(species_name: "Unicorn", description: "Unicorn, mythological animal resembling a horse or a goat with a single horn on its forehead. The unicorn appeared in early Mesopotamian artworks, and it also was referred to in the ancient myths of India and China.", user_id: grogu.id, user: grogu)
golem = Alien.create(species_name: "Golem", description: "An animated anthropomorphic being in Jewish folklore which is entirely created from inanimate matter (usually clay or mud). In the Psalms and medieval writings, the word golem was used as a term for an amorphous, unformed material.", user_id: han.id, user: han)
minotaur = Alien.create(species_name: "Minotaur", description: "A fabulous monster of Crete that had the body of a man and the head of a bull. It was the offspring of Pasiphae, the wife of Minos, and a snow-white bull sent to Minos by the god Poseidon for sacrifice.", user_id: darth.id, user: darth)
fairy = Alien.create(species_name: "Fairy", description: "A fairy is a mythical, magical creature. Most fairies in stories are described as looking like tiny humans with wings. Fairies show up in fables, myths, and fairy tales, usually as kind and lovely creatures with magical powers, although sometimes fairies are mischievous or even spiteful.", user_id: padme.id, user: padme)
siren = Alien.create(species_name: "Unicorn", description: "Siren is a hybrid creature with the body of a bird and the head of a human. Sirens are traditionally understood to be female, but similar figures with beards can be labeled either as Sirens or as daemons.", user_id: luke.id, user: luke)

puts "Creating pets..."
Pet.create(is_creature: true, user_id: luke.id, creature_id: ewok.id, alien_id: nil, user: luke)
Pet.create(is_creature: true, user_id: han.id, creature_id: porg.id, alien_id: nil, user: han)
Pet.create(is_creature: true, user_id: darth.id, creature_id: bantha.id, alien_id: nil, user: darth)
Pet.create(is_creature: true, user_id: grogu.id, creature_id: jawa.id, alien_id: nil, user: grogu)
Pet.create(is_creature: true, user_id: padme.id, creature_id: tauntaun.id, alien_id: nil, user: padme)
Pet.create(is_creature: true, user_id: darth.id, creature_id: hutt.id, alien_id: nil, user: darth)


Pet.create(is_creature: false, user_id: luke.id, creature_id: nil, alien_id: siren.id, user: luke)
Pet.create(is_creature: false, user_id: padme.id, creature_id: nil, alien_id: fairy.id, user: padme)
Pet.create(is_creature: false, user_id: luke.id, creature_id: nil, alien_id: dragon.id, user: luke)
Pet.create(is_creature: false, user_id: grogu.id, creature_id: nil, alien_id: unicorn.id, user: grogu)
Pet.create(is_creature: false, user_id: darth.id, creature_id: nil, alien_id: minotaur.id, user: darth)
Pet.create(is_creature: false, user_id: han.id, creature_id: nil, alien_id: golem.id, user: han)


puts "✅ Done seeding!"