require 'faker'

Contact.destroy_all

puts 'Creating 10 fake contacts...'
20.times do
  contact = Contact.new(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    email: Faker::Internet.unique.email,
    phone: Faker::PhoneNumber.unique.subscriber_number(length: 12)
  )
  contact.save!
end
puts 'Finished!'
