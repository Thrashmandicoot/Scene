
Organization.create(name:"DBC", bio:"DBC", avatar:"DBC", address:"DBC",email:"DBC",password_digest:"DBC", twitter:"DBC", facebook:"DBC", website:"DBC")

10.times do
 Orgscene.create(img: Faker::Avatar.image, title:Faker::Name.title, guidelines: Faker::Lorem.sentence, organization: 1)

end
