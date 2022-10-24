class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :article

    validates :value, length: { maximum: 500 }
end
