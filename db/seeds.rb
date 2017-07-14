class Seed

  User.destroy_all
  Product.destroy_all
  Order.all.each do |order|
    order.order_items.destroy_all
    order.destroy
  end


  def self.begin
    seed = Seed.new
    seed.generate_products
    User.create(
      name: 'admin',
      email: 'admin@admin.com',
      password_digest: '123456',
      admin: true
    )
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

Seed.begin
