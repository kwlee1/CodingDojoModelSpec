class User < ActiveRecord::Base
    email_regex = /\A[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]{3}/
    validates :first_name, :last_name, :email, :presence => true 
    validates :email, format: { with: email_regex }, uniqueness: true
end
