
artist1 = Artist.create(name: "Banksy", email: "banksy@street.org", password: "adminpass", avatar: "this is the avatar", bio: "I am a street artist", address: "Address Unknown", facebook: "banksy@facebook", twitter: "banksy@twitter", website: "banksyart.com")
# artist1.pieces.create(img: "This is the image", title: "Piece Title", description: "This is the description")

organization1 = Organization.create(
	name: "Costco",
	bio: "We got it all",
	avatar: "https://upload.wikimedia.org/wikipedia/commons/3/34/CostcoMoncton.JPG",
	address: "1234 Fake St., Columbus, OH",
	email: "costco@costco.com",
	password: "1234",
	twitter: "@costco",
	facebook: "http://www.facebook.com/costco",
	website: "http://www.costco.com"
	)

10.times do
	Piece.create(
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	description: Faker::Lorem.sentence(3))
end

10.times do
	Space.create(
	img: Faker::Avatar.image,
	title: Faker::Lorem.sentence,
	guidelines: Faker::Lorem.sentence(3),
	# organization_id: rand(10)
	)
end

# # Artists
# artist1 = Artist.create(name: "Banksy", email: "banksy@street.org", password: "admin", avatar: "Banksy's Avatar", bio: "I am a street artist", address: "Address Unknown", facebook: "banksy@facebook", twitter: "banksy@twitter", website: "banksyart.com")

# # Pieces
# artist1.pieces.create(img: "http://news.bbcimg.co.uk/media/images/70222000/jpg/_70222444_banksy.jpg", title: "No Graffiti", description: "This is the description")
# artist1.pieces.create(img: "http://ecx.images-amazon.com/images/I/41y48nhPGPL....", title: "Boom", description: "Butterfly's in the sky")
# artist1.pieces.create(img: "http://www.opticalspy.com/uploads/1/4/4/9/144966/_2912056_orig.jpg", title: "Maid", description: "This is the description")

# # Organizations
# Organization.create(name: "DBC", bio: "stuff", avatar: "stuff", address: "stuff", email: "stuff", password_digest: "stuff", twitter: "stuff", facebook: "stuff", website: "stuff")


# Organization.create(name:"DBC", bio:"DBC", avatar:"DBC", address:"DBC",email:"DBC",password_digest:"DBC", twitter:"DBC", facebook:"DBC", website:"DBC")

# 10.times do
#  Space.create(img: Faker::Avatar.image, title:Faker::Name.title, guidelines: Faker::Lorem.sentence, organization_id: 1)

# end

