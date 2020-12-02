FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"pass1234"}
    password_confirmation {password}
  end
end