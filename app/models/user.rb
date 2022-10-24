class User < ApplicationRecord
    has_secure_password
    has_many :articles
    has_many :bookmarks, through: :Articles
   
    validates :username, presence: true
    # validates :password, presence: true
    # validates :email, uniqueness: true
    # validates :username, presence: true, uniqueness: true
    # validates :password_digest, confirmation: true
    validates_presence_of :password, :on => :create
    validates_presence_of :email
    validates_uniqueness_of :email
end
