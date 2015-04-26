# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'])

10.times do |i|
  Post.create!(
      title: Faker::Lorem.sentences(1).join,
      tagline: Faker::Lorem.paragraphs(1).join,
      url: 'http://example.com',
      sort_order: i,
      scheduled_at: DateTime.now()
  )
end
