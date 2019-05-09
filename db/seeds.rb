Plane.destroy_all
p1 = Plane.create :name => 'Airbus A321', :seats => 12, :rows => 4, :columns => 3
p2 = Plane.create :name => 'Atr ATR-76', :seats => 15, :rows => 5, :columns => 3
p3 = Plane.create :name => 'Boeing 737-900', :seats => 18, :rows => 6, :columns => 3
p4 = Plane.create :name => 'Cessna 402', :seats => 9, :rows => 3, :columns => 3
p5 = Plane.create :name => 'Embraer 190', :seats => 15, :rows => 5, :columns => 3
p6 = Plane.create :name => 'Boeing 737-900', :seats => 12, :rows => 4, :columns => 3

Flight.destroy_all
f1 = Flight.create :number => "SYD01", :origin => "Sydney", :destination => "London", :date => '2019/5/12', :plane_id => 1
f2 = Flight.create :number => "LON02", :origin => "London", :destination => "New York", :date => '2019/5/13', :plane_id => 2
f3 = Flight.create :number => "LON03", :origin => "London", :destination => "New York", :date => '2019/5/14', :plane_id => 3
f4 = Flight.create :number => "NEW04", :origin => "New York", :destination => "Sydney", :date => '2019/5/15', :plane_id => 4

User.destroy_all
u1 = User.create :fname => "Luke", :lname => "Firth", :email => "luke@ga.co", :password_digest => "chicken", :admin => true
u2 = User.create :fname => "Adlan", :lname => "Elias", :email => "adlan@ga.co", :password_digest => "chicken", :admin => true
u3 = User.create :fname => "Ritika", :lname => "Goel", :email => "ritika@ga.co", :password_digest => "chicken", :admin => true
u4 = User.create :fname => "John", :lname => "Snow", :email => "john@gmail.com", :password_digest => "chicken", :admin => false
u5 = User.create :fname => "Bran", :lname => "Stark", :email => "bran@gmail.com", :password_digest => "chicken", :admin => false

Reservation.destroy_all
r1 = Reservation.create :user_id => 1, :flight_id => 1, :seat => "A1"
r2 = Reservation.create :user_id => 2, :flight_id => 1, :seat => "C2"
r3 = Reservation.create :user_id => 3, :flight_id => 1, :seat => "D3"
r4 = Reservation.create :user_id => 4, :flight_id => 1, :seat => "B2"
r5 = Reservation.create :user_id => 5, :flight_id => 1, :seat => "A3"
r6 = Reservation.create :user_id => 1, :flight_id => 2, :seat => "B3"
r7 = Reservation.create :user_id => 2, :flight_id => 2, :seat => "A2"
r8 = Reservation.create :user_id => 3, :flight_id => 2, :seat => "E1"
r9 = Reservation.create :user_id => 4, :flight_id => 2, :seat => "C2"
r10 = Reservation.create :user_id => 5, :flight_id => 2, :seat => "A1"
r11 = Reservation.create :user_id => 1, :flight_id => 3, :seat => "A1"
r12 = Reservation.create :user_id => 2, :flight_id => 3, :seat => "D2"
r13 = Reservation.create :user_id => 3, :flight_id => 4, :seat => "A2"
r14 = Reservation.create :user_id => 4, :flight_id => 4, :seat => "C1"

# Airport.destroy_all
# a1 = Airport.create :name => "Sydney", code: => "SYD"
# a1 = Airport.create :name => "London", code: => "LYC"
# a1 = Airport.create :name => "New York", code: => "JFK"

# Associations ###############################################
# Planes and Flights
p1.flights << f1
p2.flights << f2
p3.flights << f3
p4.flights << f4

# Users and Reservations
u1.reservations << r1 << r6 << r11
u2.reservations << r2 << r7 << r12
u3.reservations << r3 << r8 << r13
u4.reservations << r4 << r9 << r14
u5.reservations << r5 << r10

# Flights and Reservations
f1.reservations << r1 << r2 << r3 << r4 << r5
f2.reservations << r6 << r7 << r8 << r9 << r10
f3.reservations << r11 << r12
f4.reservations << r13 << r14
