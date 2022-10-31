class User < ApplicationRecord
    has_secure_password

    has_many :articles
    has_many :comments

    validates :password, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
end