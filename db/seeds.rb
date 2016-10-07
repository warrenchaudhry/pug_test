# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.find_by(email: 'juandelacruz@email.com')
unless admin.present?
  admin = User.create(email: 'juandelacruz@email.com', password: 'password1234', password_confirmation: 'password1234', first_name: 'Juan', last_name: 'Dela Cruz', country: 'Phlippines', language: 'Filipino', is_admin: true)
end

paying = User.find_by(email: 'juanitadelacruz@email.com')
unless paying.present?
  paying = User.create(email: 'juanitadelacruz@email.com', password: 'password1234', password_confirmation: 'password1234', first_name: 'Juanita', last_name: 'Dela Cruz', country: 'Phlippines', language: 'Filipino', is_paying: true)
end

free = User.find_by(email: 'juanitodelacruz@email.com')
unless free.present?
  free = User.create(email: 'juanitodelacruz@email.com', password: 'password1234', password_confirmation: 'password1234', first_name: 'Juanito', last_name: 'Dela Cruz', country: 'Phlippines', language: 'Filipino')
end
