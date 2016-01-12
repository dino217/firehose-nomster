FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@fakegmail.com"
    end
    password "password"
    password_confirmation "password"
  end

  factory :comment do
    rating "1_star"
    message "lalala"
    association :user
    association :place
  end

  factory :place do
    name "Nasty pizza place"
    description "It's nasty"
    address "2135 Circle Dr. Colorado Springs, CO"
    association :user
  end

end
