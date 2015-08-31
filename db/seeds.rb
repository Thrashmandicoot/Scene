#=================ADMIN LOGIN

Organization.create(
	name: "Admin",
	bio: Faker::Company.catch_phrase,
	avatar: Faker::Company.logo,
	address: Faker::Address.city,
	email: "Admin@admin.com",
	password: "123456",
	website: Faker::Internet.domain_name
	)

#=================ORGANIZATIONS + SCENES

30.times do
	Organization.create(
		name: Faker::Company.name + ['Immersion', 'Art', 'Imaginarium', 'Nose', 'Officetorium'].sample,
		bio: Faker::Company.catch_phrase,
		avatar: Faker::Company.logo,
		address: Faker::Address.city,
		email: Faker::Internet.email,
		password: Faker::Internet.password(6),
		website: Faker::Internet.domain_name
	)
end

30.times do
	Space.create(
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	description: Faker::Lorem.sentence(3),
	organization_id: (1..10).to_a.sample
	)
end

#=================ARTISTS + PIECES + TAGS

random_descriptions = ['Canvas', 'Card stock', 'Fabric' , 'Glass', 'Human body', 'Metal', 'Paper', 'Plaster', 'Scratchboard', 'Vellum', 'Walls', 'Wood', 'Airbrush', 'Acrylic paint', 'Charcoal', 'Colored pencil', 'Conté', 'Crayon', 'Gouache', 'Graphite', 'Human finger', 'Marker', 'Oil paint', 'Pastel', 'Pen and ink', 'Pencil', 'Sand', 'Watercolor', 'Tempera']

random_tags = ['Graffiti', 'Magick Realizm', 'Glitch', 'Figurative', 'Folk', 'Religious', 'Avant Garde', 'Participatory', 'Street', 'Southern', 'Micography', 'Marine Art', 'Fine Art', 'Antiquities', 'Animal Style', 'Cybersexual', 'Eclecticism in art', 'New Media', 'Victimless', 'Painted', 'Nouvelle Vagrance', 'New Chimney', 'Shoe', 'General Surveillance', 'Sound Art', 'Pleorama', 'Dada', 'Massurealism', 'Decorative', 'Elvis', 'Mall Goth', 'Environmental']

random_addresses_sf = []
File.readlines("/Users/laurynporte/Desktop/finalProject/Scene/db/latlnges.txt").each do |address|
	random_addresses_sf << address.strip
end

# SF Artists from City Arts
response = HTTParty.get('https://www.kimonolabs.com/api/aeongt2c?apikey=OJQIQILpmhaUZHWM2iTIHALjlCkYOIHf')

response["results"]["collection1"].each do |artist|
	avatar = HTTParty.get('http://uifaces.com/api/v1/random')
	avatar_img = avatar["image_urls"]["bigger"]
	new_artist = Artist.create(
		name: artist["category"]["text"],
		email: artist["category"]["href"],
		password: "123456",
		avatar: avatar_img,
		bio: ["My work explores the relationship between the Military-Industrial Complex and vegetarian ethics.", "With influences as diverse as Rousseau and Roy Lichtenstein, new tensions are manufactured from both constructed and discovered textures.", "Ever since I was a pre-adolescent I have been fascinated by the unrelenting divergence of the moment. What starts out as triumph soon becomes corroded into a dialectic of power, leaving only a sense of dread and the dawn of a new beginning.", "As shimmering forms become transformed through studious and repetitive practice, the viewer is left with an insight into the possibilities of our culture.", "As spatial forms become distorted through studious and academic practice, the viewer is left with a clue to the darkness of our culture."].sample,
		address: random_addresses_sf.sample,
		facebook: "www.facebook.com/" + artist["category"]["text"],
		twitter: "@" + artist["category"]["text"] + "ger",
		website: artist["website"]["href"]
		)

	Piece.create(
		img: artist["images"]["src"],
		title: artist["images"]["alt"],
		description: random_descriptions.sample(3).to_s,
		artist_id: new_artist.id,
		tag_list: random_tags.sample(3).to_s	
		)
	end

