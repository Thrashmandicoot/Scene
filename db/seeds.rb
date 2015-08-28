artist1 = Artist.create(name: "Banksy", email: "banksy@street.org", password: "admin", avatar: "this is the avatar", bio: "I am a street artist", address: "Address Unknown", facebook: "banksy@facebook", twitter: "banksy@twitter", website: "banksyart.com")
artist1.pieces.create(img: "This is the image", title: "Piece Title", description: "This is the description")
