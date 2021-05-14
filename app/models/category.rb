class Category < ApplicationRecord
    has_many :bookmark_categories
    has_many :bookmarks, through: :bookmark_categories, dependent: :destroy

    belongs_to :parent_category, class_name: 'Category', foreign_key: :category_id, optional: true
    has_many :child_categories, class_name: 'Category', foreign_key: :category_id, dependent: :delete_all
    
    def to_s
        self.name
    end
end
