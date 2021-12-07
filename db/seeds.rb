require "faker"

Song.destroy_all

Album.destroy_all

Store.destroy_all

1.times do
  store = Store.create(
    name:    "Jay-z Arena",
    email:   "iSellMusic@KleenCloset.com"
  )

  10.times do
    albums = Album.create(
      title:  Faker::Music::RockBand.song,
      rating: rand(1..10)
    )
    10.times do
      songs = Song.create(
          title: Faker::Music::PearlJam.song,
          genre: Faker::Music::Hiphop.subgenres,
          length: rand(120..260),
          instock: rand(1..150),
          rating: rand(1..10),
          price: Faker::Commerce.price,
          album: albums,
          store: store
      )
    end
  end

  # if Rails.env.development?
  # AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  # end
