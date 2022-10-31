require 'faker'

100.times do
    # restaurant = Restaurant.new(
    #     name: Faker::Restaurant.name,
    #     address: FakerFaker::Address.street_address,
    #     description: Faker::Lorem.paragraph,
    #     rating: rand(0..5)
    # )
    # restaurant.save!
    Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        description: Faker::Lorem.paragraph,
        rating: rand(0..5)
    )
end