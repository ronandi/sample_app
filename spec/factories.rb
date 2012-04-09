FactoryGirl.define do 
    factory :user do
        name    "Rohit Kumar"
        email   "rohit@foo.com"
        password "foobar"
        password_confirmation "foobar"
    end
end
