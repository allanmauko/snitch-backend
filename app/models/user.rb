class User < ApplicationRecord
    has_secure_password

    has_many :articles

    validates :password, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
end
