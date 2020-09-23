puts 'Start inserting seed "therapists" ...'
50.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  sex = Faker::Number.within(range: 0..3)
  age = Faker::Number.within(range: 20..100)
  pref = Faker::Number.within(range: 1..47)
  postal_code = Faker::Address.zip_code
  city = Faker::Address.city
  address = Faker::Address.street_address
  nearest_station = Faker::Address.street_name
  image = Faker::Avatar.image
  license = Faker::Number.within(range: 0..6)
  self_introduction = Faker::Lorem.sentence
  work_experience = Faker::Lorem.sentence
  Therapist.create!(name: name,
                    email: email,
                    sex: sex,
                    age: age,
                    pref: pref,
                    postal_code: postal_code,
                    city: city,
                    address: address,
                    nearest_station: nearest_station,
                    image: image,
                    license: license,
                    self_introduction: self_introduction,
                    work_experience: work_experience,
                    password: "password",
                    confirmed_at: Time.now
                    )
end