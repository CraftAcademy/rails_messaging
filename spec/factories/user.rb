FactoryBot.define do
  factory :user do
    name 'Fake Man'
    password 'fakepassword'
    email { "#{name}@example.com".gsub(/\s/,'.').downcase }
  end
end
