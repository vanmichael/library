# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    book_id 1
    name "Vaniel Hawthorne"
    phone_number "111-111-1111"
  end
end
