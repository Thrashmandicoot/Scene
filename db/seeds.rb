
Organization.create( name: "dbc", bio:"hello",avatar:"hello", address:"hello",email:"hello", password_digest:"hello", twitter:"hello", facebook:"hello", website:"hello" )


10.times do
  OrgScene.create(img: Faker::Avatar.image, title: Faker::Name.title, guidelines: Faker::Lorem.sentence, organization_id:1)
end



