FactoryGirl.define do
  factory :user do
    name 'My User'
    email 'user@example.com'
    password 'password'
    password_confirmation 'password'

    # required if the Devise Confirmable module is used

    confirmed_at Time.now
  end
end
