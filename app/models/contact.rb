class Contact < ApplicationRecord
    
    # https://guides.rubyonrails.org/active_record_validations.html

    validates  :name, 
    presence: { message: "must be filled!" }, 
    format: { with: /[A-Za-z]+/,
              message: "only allows letters."}

    validates  :email, 
    presence: { message: "should be filled!" },
    uniqueness: { message: "has already been taken" },
    format: { with: /\A(\S+)@(.+)\.(\S+)\z/,
              message: "%{value} seems wrong"}
    
end