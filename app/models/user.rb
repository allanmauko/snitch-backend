class User < ApplicationRecord
    has_secure_password
    has_many :Articles
    has_many :Bookmarks through: :Articles
   

    validates :password, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
end
