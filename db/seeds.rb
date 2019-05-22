10.times do
    doctor = Doctor.create(
        first_name: Faker::Name.first_name
        last_name: Faker::Name.last_name
    )

10.times do
    user = User.create(
        first_name: Faker::Name.first_name
        last_name: Faker::Name.last_name  
    )

    Appointment.create(
        date: Faker::Date
        time: Faker::Time
    )
end

end

puts "Data Seeded."