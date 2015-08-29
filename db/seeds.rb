# Artists
artist1 = Artist.create(name: "Banksy", email: "banksy@street.org", password: "admin", avatar: "Banksy's Avatar", bio: "I am a street artist", address: "Address Unknown", facebook: "banksy@facebook", twitter: "banksy@twitter", website: "banksyart.com")

# Pieces
artist1.pieces.create(img: "http://news.bbcimg.co.uk/media/images/70222000/jpg/_70222444_banksy.jpg", title: "No Graffiti", description: "This is the description")
artist1.pieces.create(img: "http://ecx.images-amazon.com/images/I/41y48nhPGPL....", title: "Boom", description: "Butterfly's in the sky")
artist1.pieces.create(img: "http://www.opticalspy.com/uploads/1/4/4/9/144966/_2912056_orig.jpg", title: "Maid", description: "This is the description")

# Organizations
Organization.create(name: "DBC", bio: "stuff", avatar: "stuff", address: "stuff", email: "stuff", password_digest: "stuff", twitter: "stuff", facebook: "stuff", website: "stuff")
