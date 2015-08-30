Organization.create(
	name: "Admin",
	bio: Faker::Company.catch_phrase,
	avatar: Faker::Company.logo,
	address: Faker::Address.city,
	email: "Admin@admin.com",
	password: "123456", 
	website: Faker::Internet.domain_name
	)

Artist.create(
		name: "Artist",
		bio: Faker::Lorem.paragraph,
		avatar: Faker::Avatar.image,
		address: Faker::Address.city,
		email: "artist@artist.org",
		password: "123456"
		)

20.times do
	Organization.create(
		name: Faker::Company.name,
		bio: Faker::Company.catch_phrase,
		avatar: Faker::Company.logo,
		address: Faker::Address.city,
		email: Faker::Internet.email,
		password: Faker::Internet.password(6), 
		website: Faker::Internet.domain_name
	)
end

20.times do 
	Artist.create(
		name: Faker::Name.name,
		bio: Faker::Lorem.paragraph,
		avatar: Faker::Avatar.image,
		address: Faker::Address.city,
		email: Faker::Internet.safe_email,
		password: Faker::Internet.password(6)
	)
end

tags = []

5.times do 
	tags << Faker::Hacker.adjective
end

50.times do
	piece = Piece.create(
	artist_id: (1..20).to_a.sample,
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	description: Faker::Lorem.sentence(3)
	)
	piece.tag_list.add(tags)
end

50.times do
	Space.create(
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	guidelines: Faker::Lorem.sentence(3),
	organization_id: (1..10).to_a.sample
	)
end


