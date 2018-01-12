require "faker"

5.times do
  owner = Owner.create(name: Faker::Name.last_name)
  3.times do
    owner.articles.create(name: Faker::Name.name, price: Faker::Currency.code + Faker::Number.decimal(2), description: Faker::GameOfThrones.character)
  end
end
