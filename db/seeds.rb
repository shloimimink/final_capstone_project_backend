User.create!(name: "Shloimi Minkowicz", email: "shloimi@email.com", password: "password", phone: "222-222-2222", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "aisle", class_preference: "First", airport_preference: "O'hare")
User.create!(name: "Peter Jang", email: "peter@email.com", password: "password", phone: "333-333-3333", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "window", class_preference: "Business", airport_preference: "Midway")
User.create!(name: "Dovi Minkowicz", email: "dovi@email.com", password: "password", phone: "444-444-4444", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Brooklyn", seat_preference: "aisle", class_preference: "Business", airport_preference: "JFK")
User.create!(name: "Jay Wengrow", email: "jay@email.com", password: "password", phone: "555-555-5555", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "aisle", class_preference: "Premium Economy", airport_preference: "O'hare")
User.create!(name: "Lisa Tucker", email: "lisa@email.com", password: "password", phone: "666-666-6666", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "middle", class_preference: "Economy", airport_preference: "O'hare")
User.create!(name: "Rena Wengrow", email: "rena@email.com", password: "password", phone: "777-777-7777", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "aisle", class_preference: "Premium Economy", airport_preference: "O'hare")
User.create!(name: "Eli Block", email: "eli@email.com", password: "password", phone: "888-888-8888", profile_picture: "https://i.pinimg.com/originals/94/ec/ca/94ecca0883b885ab16a9c9fbcd86d6b6.png", location: "Chicago", seat_preference: "window", class_preference: "Economy", airport_preference: "JFK")

Airline.create!(name: "British Airways", class_type: "upper")
Airline.create!(name: "Emirates", class_type: "high")
Airline.create!(name: "Lufthansa", class_type: "high")
Airline.create!(name: "South African Airways", class_type: "upper")
Airline.create!(name: "United", class_type: "normal")
Airline.create!(name: "Jet Blue", class_type: "normal")
Airline.create!(name: "Southwest Airlines", class_type: "normal")

Airplane.create!(model: "Airbus  A380")
Airplane.create!(model: "Airbus  A340")
Airplane.create!(model: "Airbus  A330")
Airplane.create!(model: "Airbus  A320")
Airplane.create!(model: "Boing 747")
Airplane.create!(model: "Boing 787")
Airplane.create!(model: "Boing 777")
Airplane.create!(model: "Boing 737")

AirlineAirplane.create!(airline_id: 1, airplane_id: 1)
AirlineAirplane.create!(airline_id: 1, airplane_id: 5)
AirlineAirplane.create!(airline_id: 1, airplane_id: 2)
AirlineAirplane.create!(airline_id: 1, airplane_id: 3)
AirlineAirplane.create!(airline_id: 2, airplane_id: 1)
AirlineAirplane.create!(airline_id: 2, airplane_id: 5)
AirlineAirplane.create!(airline_id: 3, airplane_id: 1)
AirlineAirplane.create!(airline_id: 3, airplane_id: 2)
AirlineAirplane.create!(airline_id: 3, airplane_id: 3)
AirlineAirplane.create!(airline_id: 3, airplane_id: 5)
AirlineAirplane.create!(airline_id: 4, airplane_id: 2)
AirlineAirplane.create!(airline_id: 4, airplane_id: 3)
AirlineAirplane.create!(airline_id: 4, airplane_id: 5)
AirlineAirplane.create!(airline_id: 4, airplane_id: 3)
AirlineAirplane.create!(airline_id: 5, airplane_id: 4)
AirlineAirplane.create!(airline_id: 5, airplane_id: 3)
AirlineAirplane.create!(airline_id: 5, airplane_id: 8)
AirlineAirplane.create!(airline_id: 6, airplane_id: 4)
AirlineAirplane.create!(airline_id: 6, airplane_id: 8)
AirlineAirplane.create!(airline_id: 7, airplane_id: 4)
AirlineAirplane.create!(airline_id: 7, airplane_id: 8)

AirplaneUser.create!(airplane_id: 1, user_id: 1)
AirplaneUser.create!(airplane_id: 2, user_id: 1)
AirplaneUser.create!(airplane_id: 5, user_id: 1)
AirplaneUser.create!(airplane_id: 7, user_id: 2)
AirplaneUser.create!(airplane_id: 5, user_id: 3)
AirplaneUser.create!(airplane_id: 1, user_id: 4)
AirplaneUser.create!(airplane_id: 5, user_id: 4)
AirplaneUser.create!(airplane_id: 2, user_id: 5)
AirplaneUser.create!(airplane_id: 4, user_id: 5)
AirplaneUser.create!(airplane_id: 7, user_id: 6)
AirplaneUser.create!(airplane_id: 2, user_id: 6)
AirplaneUser.create!(airplane_id: 1, user_id: 7)
AirplaneUser.create!(airplane_id: 5, user_id: 7)

Image.create!(url: "https://images.unsplash.com/photo-1567446188601-95f43044f6dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", airplane_id: 1, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1531759951075-dffa55b8e086?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2205&q=80", airplane_id: 1, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1543903905-cee4ab46985c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80", airplane_id: 1, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1559711469-31b420b24c10?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", airplane_id: 2, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1558718707-373a67b4d538?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", airplane_id: 3, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1532883308578-f782356e38de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", airplane_id: 3, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1568183441285-0e2e7d6df8db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", airplane_id: 4, user_id: 1)
Image.create!(url: "https://images.unsplash.com/photo-1572024847331-51608dafcf45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", airplane_id: 7, user_id: 2)

Post.create!(text: "South African Airways has now the A380 !!", user_id: 1, airplane_id: 1)
Post.create!(text: "747 special Besiness class with SAA", user_id: 3, airplane_id: 5)
Post.create!(text: "4 engine single floor airplane ?? wow !!", user_id: 2, airplane_id: 2)

Comment.create!(text: "Nice !!", post_id: 1, user_id: 1)
Comment.create!(text: "wow !!", post_id: 2, user_id: 1)
Comment.create!(text: "yep !!", post_id: 3, user_id: 1)