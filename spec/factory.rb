FactoryBot.define do 
    factory :user do 
        email { 'vale@duarte.com' } 
        password { 'Agus-Brites' } 
        end
    end

    FactoryBot.define do 
        factory :car do 
            brand { 'Toyota' } 
            model { 'Toyota 1.2' } 
            price { '9.99' } 
            end
        end