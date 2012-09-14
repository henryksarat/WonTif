    FactoryGirl.define do
      factory :user do |u|
       u.email "h@aol.com"
       u.email_confirmation "h@aol.com"
       u.first_name "Henryk"
       u.last_name "Henryk"
       u.terms_of_service "1"
       factory :invalid_user do |u2|
        u2.email "wtf"
       end
      end
    end
