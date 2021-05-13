class Category < ApplicationRecord
    has_many :bookmark_categories
    has_many :bookmarks, through: :bookmark_categories, dependent: :destroy

    def to_s
        self.name
    end
end
