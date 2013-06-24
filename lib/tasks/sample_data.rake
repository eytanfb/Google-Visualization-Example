namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    25.times do |n|
      name = Faker::Name.name
      date = Date.today + n.days
      shipping = [true, false].sample
      Order.create!(name: name, date: date, shipping: shipping)
    end
  end
  
end