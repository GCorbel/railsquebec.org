Factory.define :user do |u|
  u.sequence(:username) { |n| "john#{n}" }
  u.password 'johndoe'
  u.password_confirmation 'johndoe'
  u.sequence(:email) { |n| "john#{n}@doe.com" }
  u.sequence(:github) { |n| "john#{n}" }
  u.sequence(:twitter) { |n| "john#{n}" }
  u.sequence(:city) { |n| "Quebec" }
  u.sequence(:postal_code) { |n| "a1b2c3" }
  u.sequence(:street) { |n| "Rue Gambetta" }
  u.after_create { |u| u.confirm! }
end
