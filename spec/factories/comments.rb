FactoryBot.define do
  factory :comment do
    user_id { "MyString" }
    content { "MyText" }
    book_id { "MyString" }
  end
end
