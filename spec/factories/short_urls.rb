FactoryBot.define do
  factory :short_url do
    original_url { "MyString" }
    slug { "MyString" }
    user { nil }
  end
end
