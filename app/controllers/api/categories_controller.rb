class Api::CategoriesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def news
        category = Category.find(params[:id])
        categories_array = []
            hash = {
                id: category.id,
                name: category.name,
                public: category.public,
                parent_category: category.parent_category, 
                bookmarks: category.bookmarks.pluck(:name)
            }
            categories_array << hash
        
        render json: categories_array
    end
end