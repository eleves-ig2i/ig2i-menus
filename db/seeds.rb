def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

student = Student.create!(
  firstname: 'Sofiane',
  lastname: 'Gargouri',
  email: 'contact@sofianeg.com',
  password: '12345678',
  password_confirmation: '12345678'
)

10.times do
  meal = Meal.create!(
    name: Faker::Food.dish,
    ingredients: Array.new(10).map { Faker::Food.ingredient },
    student: student
  )
  puts "Created meal: #{meal.name}"
end

100.times do
  date = time_rand Time.zone.now - 6.month, Time.zone.now + 6.month
  menu = Menu.create!(
    date: date,
    name: "Menu du #{date.strftime('%m/%d/%Y')}",
    published_at: date - 1.week,
    ended_at: date,
    student: student
  )
  5.times do
    MenuMeal.create!(menu: menu, meal: Meal.all.sample)
  end
  puts "Created menu: #{menu.name}"
end
