FactoryGirl.define do
  factory(:user) do
    name('test')
    email('test@test.com')
    password('123456')
  end
end
