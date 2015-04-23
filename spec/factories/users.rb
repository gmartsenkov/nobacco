FactoryGirl.define do
    # Define a basic devise user.
    factory :user do
        email "example@example.com"
        password "12345678"
        password_confirmation "12345678"
    end
end