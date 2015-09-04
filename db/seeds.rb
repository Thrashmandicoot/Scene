random_descriptions = [Faker::Hacker.say_something_smart, 'Canvas', 'Card stock', 'Fabric' , 'Glass', 'Human body', 'Metal', 'Paper', 'Plaster', 'Scratchboard', 'Vellum', 'Walls', 'Wood', 'Airbrush', 'Acrylic paint', 'Charcoal', 'Colored pencil', 'Conté', 'Crayon', 'Gouache', 'Graphite', 'Human finger', 'Marker', 'Oil paint', 'Pastel', 'Pen and ink', 'Pencil', 'Sand', 'Watercolor', 'Tempera']

random_tags = ['Graffiti', 'Magick Realizm', 'Glitch', 'Folk', 'Religious', 'Avant Garde', 'Street', 'Southern', 'Micography', 'Marine Art', 'Fine Art', 'Animal Style', 'Cybersexual', 'Eclecticism in art', 'New Media', 'Painted', 'Sound Art', 'Pleorama', 'Dada', 'Massurealism', 'Decorative', 'Mall Goth', 'Environmental']

random_addresses_sf = []
file = File.open(File.join(Rails.root, 'db', 'address2.txt'))
file.readlines.each do |address|
	random_addresses_sf << address.strip
end

# #=================ARTISTS Alice=================#

alice = Artist.create(
	name: "Alice Pasquini",
	email: "alice@street.art",
	password: "123456",
	avatar: "https://creativesparkpower.files.wordpress.com/2015/08/67732_437909877477_752647477_5263520_5178865_n_jpg_940x0_q85.jpg",
	bio: "visual artist from Rome who works as an illustrator, set designer, and painter. Alice’s preferred canvases are city walls and she’s traveled widely, bringing her artwork to life on the streets of different cities across the globe, such as Sydney, New York, Barcelona, Oslo, Moscow, Paris, Copenhagen, Marrakech, Berlin, Saigon, London, and Rome.",
	address: "107 Vale St, Daly City, CA 94014",
	facebook: "www.facebook.com/" + "alicepasquini",
	twitter: "@alicepasquini",
	website: "http://www.alicepasquini.com/"
	)



Dir.foreach('app/assets/images/alice') do |item|
	if item[0] != "."
	 	alice.pieces.create(
	 		title: "#{item}"[0...-4],
			image: File.open(File.join(Rails.root, 'app/assets/images/alice', "#{item}")),
			description: ["Represent human emotion and explore these emotions from a different point of view", "Demonstrate the small moments between people and their connections to one another", "Desire to show strong, independent women in a way that differs from the highly sexualized image of femininity that is typically seen in society"].sample,
			tag_list: "Street, Painter"
		)
 	end
end



# #=================ARTISTS Zoe=================#

zoe = Artist.create(
	name: "Zoe 'Yonce' Ingram",
	email: "zingram@risd.edu",
	password: "123456",
	avatar: "http://static1.squarespace.com/static/548f75f7e4b06a282a4be45f/t/549e0904e4b045b4501ac452/1419643141199/?format=750w",
	bio: "Studied Design at Rhode Island School of Design and Web Development at DevBootCamp. I can make you a bad ass website AND design it. Gucci.",
	address: "522 Folsom st, San Francisco, CA 94105",
	facebook: "www.facebook.com/" + "zoeingram",
	twitter: "@zoeingram",
	website: "http://zoe-ingram.squarespace.com/"
	)

Dir.foreach('app/assets/images/zoe') do |item|
	if item[0] != "."
	 	zoe.pieces.create(
	 		title: "#{item}"[0...-4],
			image: File.open(File.join(Rails.root, 'app/assets/images/zoe', "#{item}")),
			description: "Handrawn",
			tag_list: "Sketch, Animation"
		)
 	end
end

# #=================ARTISTS Madj=================#

	majd = Artist.create(
		name: "Majd Murad",
		email: "artemasks@gmail.com",
		password: "123456",
		avatar: "http://static1.squarespace.com/static/530fc5f5e4b0e44d7fb1964c/t/55070a07e4b0481afcf6aee2/1426524684112/website+image?format=500w",
		bio: "Majd is a trained actor and writer whose theatrical endeavors introduced him into the world of Commedia Dell'Arte, a masked form of theatre that originated in Italy in the 1500's.",
		address: "88 Howard St, San Francisco, CA 94105",
		facebook: "www.facebook.com/" + "MajdMurad",
		twitter: "@ShaikhMajdi",
		website: "http://www.artemasks.com/"
		)

	Dir.foreach('app/assets/images/majd') do |item|
	if item[0] != "."
	 	majd.pieces.create(
	 		title: "#{item}"[0...-4],
			image: File.open(File.join(Rails.root, 'app/assets/images/majd', "#{item}")),
			description: "All designed and constructed by the hand of the artist",
			tag_list: "Masks"
		)
 	end
end


# #=================ARTISTS + PIECES + TAGS=================#



# # SF Artists from City Arts
response = HTTParty.get('https://www.kimonolabs.com/api/aeongt2c?apikey=OJQIQILpmhaUZHWM2iTIHALjlCkYOIHf')

25.times do |i|
	artist = response["results"]["collection1"][i]

	avatar = HTTParty.get('http://uifaces.com/api/v1/random')
	avatar_img = avatar["image_urls"]["bigger"]

	Artist.create(
		name: artist["category"]["text"],
		email: artist["category"]["href"],
		password: "123456",
		avatar: avatar_img,
		bio: ["My work explores the relationship between the Military-Industrial Complex and vegetarian ethics.", "With influences as diverse as Rousseau and Roy Lichtenstein, new tensions are manufactured from both constructed and discovered textures.", "Ever since I was a pre-adolescent I have been fascinated by the unrelenting divergence of the moment. What starts out as triumph soon becomes corroded into a dialectic of power, leaving only a sense of dread and the dawn of a new beginning.", "As shimmering forms become transformed through studious and repetitive practice, the viewer is left with an insight into the possibilities of our culture.", "As spatial forms become distorted through studious and academic practice, the viewer is left with a clue to the darkness of our culture."].sample,
		address: random_addresses_sf[i],
		facebook: "www.facebook.com/" + artist["category"]["text"],
		twitter: "@" + artist["category"]["text"] + "ger",
		website: artist["website"]["href"]
		)
end

# Create pieces from dir
titles = [Faker::Hacker.adjective, Faker::Hacker.noun, Faker::Hacker.verb, Faker::Hacker.ingverb, Faker::Hacker.abbreviation ]
Dir.foreach('app/assets/images/pieces') do |item|
	if item[0] != "."
	 	Piece.create(
	 		title: Faker::App.name,
			image: File.open(File.join(Rails.root, 'app/assets/images/pieces', "#{item}")),
			description: random_descriptions.sample(3),
			artist_id: (4..27).to_a.sample,
			tag_list: random_tags.sample(2)
		)
 	end
end

#=================DBC ORG=================#

dbc = Organization.create(
	name: "DevBootCamp",
	bio: "Code Yourself a new Future",
	avatar: "https://cdn.evbuc.com/images/11744831/120475400545/1/logo.png",
	address: "633 Folsom St, San Francisco, CA 94103",
	email: "derek@dbc.com",
	password: "123456",
	facebook: "https://www.facebook.com/devbootcamp",
	twitter: "https://twitter.com/devbootcamp?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
	website: "http://devbootcamp.com"
	)

new_space = Space.create(
	title: "Welcome to DBC",
	image: File.open(File.join(Rails.root, 'app/assets/images/primeorg', "dbc.jpg")),
	description: "Integrity, Kindness, Wholeself"
	)

	Artist.first.spaces << new_space
	Organization.first.spaces << new_space

#=================ORGANIZATIONS + SCENES=================#

5.times do
	Organization.create(
		name: Faker::Company.name + " " +['Immersion','Brothers', 'Art','Co.', 'Inc.', 'Asc.' 'Imaginarium', 'Nose', 'Officetorium'].sample,
		bio: Faker::Company.catch_phrase,
		avatar: Faker::Company.logo,
		address: random_addresses_sf.sample,
		email: Faker::Internet.email,
		password: "123456",
		website: Faker::Internet.domain_name
	)
end

Dir.foreach('app/assets/images/scenes') do |item|
	if item[0] != "."
	 	Artist.all.first(3).sample.spaces << Space.create(
	 		title: Faker::App.name,
			image: File.open(File.join(Rails.root, 'app/assets/images/scenes', "#{item}")),
			description: random_tags.sample(1),
			organization_id: (2..6).to_a.sample
		)
 	end
end


# SCENE SEED
team = Organization.create(
	name: "SCENE",
	bio: "Connecting Businesses with Artists to create a beautiful world.",
	avatar: File.open(File.join(Rails.root, "app/assets/images/scene_logo.png")),
	address: "633 Folsom St, San Francisco, CA 94103",
	email: "scene@team.net",
	password: "123456",
	facebook: "https://www.facebook.com/scene",
	twitter: "https://twitter.com/scene",
	website: "http://localhost:3000/"
	)

Dir.foreach('app/assets/images/slides') do |item|
	if item[0] != "."
	 	team.spaces.create(
	 		title: "#{item}"[0...-4],
			image: File.open(File.join(Rails.root, 'app/assets/images/slides', "#{item}")),
			description: "Scene Team Slides",
			artist_id: 25,
			organization_id: 7
		)
 	end
end



