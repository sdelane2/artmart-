# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
User.destroy_all
FavoriteArtwork.destroy_all

Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/e450f5c36b5fa5d718503c7f93c7c3f0.jpg", title: "If You", artist_name: "Christopher Wool", gallery: "Luhring Augustine", medium: "Enamel on aluminum", year: 2005, dimensions: "52 x 36 inches", price: 2500000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/617d8ab2075b9e8d8ee4964802c9c4a5.jpeg", title: "Worry Will Vanish", artist_name: "Pipilotti Rist", gallery: "Luhring Augustine", medium: "Video installation", year: 2015, dimensions: "Variable", price: 2500000 )
Artwork.create(image_url: "https://www.matthewmarks.com/www_matthewmarks_com/Celmins_Tableu_1_2007_20100.png", title: "Blackboard Tableau #1", artist_name: "Vija Celmins", gallery: "Matthew Marks", medium: "Found tablets, made tablets, wood, acrylic, alkyd oil, pastel, string, paper", year: 2010, dimensions: "17 1/4 x 70 1/4 x 2 inches", price: 30000 )
Artwork.create(image_url: "https://ajkwrfsyen.cloudimg.io/v7/https://dzprodcdn.azureedge.net/-/media/davidzwirner/artwork/davisnoah/davno0017a/davno0017a.png?rev=0cd1638b58b44bb7ae8ec7526b73f641&hash=BF985BE7953A213FAAC0A0A3AF0BC3DD&w=4000&org_if_sml=1&force_format=original", title: "Imaginary Enemy", artist_name: "Noah Davis", gallery: "David Zwirner", medium: "Oil on canvas", year: 2009, dimensions: "84 x 96 inches", price: 200000 )
Artwork.create(image_url: "https://bynder-public-eu-central-1.s3.amazonaws.com/media/7F8951FF-19D4-45D4-B982D6125B7E7BD3/FE606830-994B-4D51-87558B410EFA58E3/webimage-F565E5C3-B08C-439A-934453DDE3A68FF8.jpg", title: "Double America 2", artist_name: "Glenn Ligon", gallery: "Hauser and Wirth", medium: "Neon and paint", year: 2014, dimensions: "48 x 145 inches", price: 350000 )

Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/840ac152cbb3ceff2a23b3b53e568957.jpeg", title: "Enchiridion ", artist_name: "Philip Taaffe", gallery: "Luhring Augustine", medium: "Mixed media on canvas", year: 2014, dimensions: "80 1/4 x 71 5/8 inches", price: 200000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/b0bcec73b4cab952d3badb3670b22fe7.jpeg", title: "The Passenger", artist_name: "Jeff Elrod", gallery: "Luhring Augustine", medium: "Acrylic on canvas", year: 2015, dimensions: "96 x 75 inches", price: 80000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/db8b68f149c93ef5443a3f6651ff44cc.jpeg", title: "Tavolo azzurro", artist_name: "Michelangelo Pistoletto", gallery: "Matthew Marks", medium: "Silkscreen on polished stainless steel", year: 1982, dimensions: "98 3/8 x 49 3/16 inches", price: 120000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/703aa256e7ac4f0a1acd02079636a5a4.jpeg", title: "Superficie Modulada", artist_name: "Lygia Clark", gallery: "David Zwirner", medium: "Industrial ink on wood", year: 1958/84, dimensions: "16 1/2 x 24 3/4 inches", price: 350000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/6a8c1a7db026b1c95ee96cb985720a21.jpeg", title: "Untitled (20-02)", artist_name: "Richard Rezac", gallery: "Hauser and Wirth", medium: "Cast bronze, painted wood and aluminum", year: 2020, dimensions: "29 x 25 x 4 inches", price: 30000 )

Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/ac263fd319fc9bf110c468119f2b9146.jpeg", title: "Untitled (green background)", artist_name: "Christina Forrer", gallery: "Luhring Augustine", medium: "Cotton, wool, linen, silk, and watercolor", year: 2018, dimensions: "119 x 80 inches", price: 60000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/0a689bea68ecca7cb9f91300e9677d7b.jpeg", title: "Knoxville, Tennessee", artist_name: "Lee Friedlander", gallery: "Luhring Augustine", medium: "Gelatin silver print", year: 1971, dimensions: "11 x 14 inches ", price: 15000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/5ca3e0aeadadd696974790784b908d8d.jpg", title: "Rachel Whiteread", artist_name: "Rachel Whiteread", gallery: "Matthew Marks", medium: "Resin", year: 2010, dimensions: "27 1/2 x 13 3/4 x 5 3/4 inches", price: 120000 )
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/1438x862_fit/556d89b2cfaf3421548b4568/2bd9d4b34be7a0fa6d6a8c2c946a92d7.jpeg", title: "Untitled (L'Etranger)", artist_name: "Steve Wolfe", gallery: "David Zwirner", medium: "Oil, ink transfer, modeling paste, linen and wood", year:  1988-1989, dimensions: "6 1/2 x 4 3/8 x 5/8 inches", price: 110000)
Artwork.create(image_url: "https://s3.amazonaws.com/files.collageplatform.com.prod/image_cache/719x431_fit/556d89b2cfaf3421548b4568/0d2b4adc63f90025d12cedb394e65a13.jpg", title: "Untitled", artist_name: "Roger Hiorns", gallery: "Hauser and Wirth", medium: "Engine, aluminum, hardware, copper sulfate", year: 2007, dimensions: "62 1/4 x 23 3/5 x 22 inches", price: 125000 )
puts "Planting seeds 🌱"
