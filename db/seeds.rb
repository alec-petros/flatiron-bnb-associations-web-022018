
college_hill = Neighborhood.create(name: "College Hill", city: City.create(name: "Providence"))
chicago = Neighborhood.create(name: "Chicagotown", city: City.create(name: "Chicago"))
skytown = Neighborhood.create(name: "Skytown", city: City.create(name: "Rapture"))
strip = Neighborhood.create(name: "The Strip", city: City.create(name: "Las Vegas"))
brooklyn = Neighborhood.create(name: "Brooklyn", city: City.create(name: "New York City"))

Listing.create(address: "1371 Someplace", listing_type: "palace", title: "you wish you could afford this", description: "someplace", price: 7777777.00, neighborhood: chicago, host: User.create(name: "Kenny"))

res2 = Reservation.create(checkin: "1992-07-08", checkout: "2018-6-01",
  listing: Listing.create(address: "1087 Flush", listing_type: "private room", title: "Narnia", description: "You shall not pass", price: 9999.00, neighborhood: brooklyn, host: User.create(name: "Franklin")),
  guest: User.create(name: "jimbo slice")
)
res1 = Reservation.create(checkin: "1000-01-38", checkout: "2018-2-22",
  listing: Listing.create(address: "11 West Side", listing_type: "dorm", title: "RISD Housing", description: "Cool kids", price: 25.00, neighborhood: college_hill, host: User.create(name: "Casey")),
  guest: User.create(name: "mac major")
)

Review.create(description: "It was good", rating: 11, reservation: res1)
Review.create(description: "It was bad", rating: 1, reservation: res2)
