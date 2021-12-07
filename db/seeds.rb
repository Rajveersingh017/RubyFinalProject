require "faker"

Song.destroy_all

Album.destroy_all

Store.destroy_all

1.times do
  store = Store.create(
    name:    "Jay-z Arena",
    email:   "iSellMusic@KleenCloset.com"
  )
  5.times do
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
      query = URI.encode_www_form_component([songs.title, albums.title].join(','))
      download_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
      songs.image.attach(io: download_image, filename: "m-#{[songs.title, albums.title].join('-')}.jpg")
      sleep(1)
    end
  end
end


#  if Rails.env.development?
#   AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
#  end
