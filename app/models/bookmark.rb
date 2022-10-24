class Bookmark < ApplicationRecord
    belongs_to :User
    belongs_to :Article

end
