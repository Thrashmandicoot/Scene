# artist1 = Artist.create(name: "Banksy", email: "banksy@street.org", password: "admin", avatar: "this is the avatar", bio: "I am a street artist", address: "Address Unknown", facebook: "banksy@facebook", twitter: "banksy@twitter", website: "banksyart.com")
# artist1.pieces.create(img: "This is the image", title: "Piece Title", description: "This is the description")

# organization1 = Organization.create(
# 	name: "Costco",
# 	bio: "We got it all",
# 	avatar: "https://upload.wikimedia.org/wikipedia/commons/3/34/CostcoMoncton.JPG",
# 	address: "1234 Fake St., Columbus, OH",
# 	email: "costco@costco.com",
# 	password: "1234",
# 	twitter: "@costco",
# 	facebook: "http://www.facebook.com/costco",
# 	website: "http://www.costco.com"
# 	)

# 10.times do 
# 	Piece.create(
# 	img: Faker::Avatar.image,
# 	title: Faker::Lorem.sentence,
# 	description: Faker::Lorem.sentence(3))
# end

10.times do 
	Orgscene.create(
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	guidelines: Faker::Lorem.sentence(3),
	organization_id: rand(10)
	)
end