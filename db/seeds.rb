# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

contacts = []
biz_contacts = []
# Fake data

15.times do |i|
  new_contact = {
      id: i,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone: Faker::PhoneNumber.phone_number,
      address: Faker::Address.street_address,
      email: Faker::Internet.safe_email
  }
  contacts.push(new_contact)
end

#Transfer faker dummy data to database
Contact.create(contacts)

10.times do |i|
  new_biz_contact = {
      id: i,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      company: Faker::Company.name,
      phone: Faker::PhoneNumber.phone_number,
      address: Faker::Address.street_address,
      email: Faker::Internet.safe_email
  }
  biz_contacts.push(new_biz_contact)
end

#Transfer faker dummy data to database
Biz_Contact.create(biz_contacts)


