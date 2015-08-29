

10.times do

name = Faker::Company.name

Organization.create(name: name, bio:Faker::Company.catch_phrase, avatar:Faker::Company.logo, address: Faker::Address.street_address, email:Faker::Internet.email, password_digest:Faker::Internet.password, twitter: name, facebook: name, website: name)

end

10.times do
 Space.create(img: Faker::Avatar.image, title:Faker::Name.title, guidelines: Faker::Lorem.sentence, organization_id: 1 + rand(10))

end
