class HomeController < ApplicationController
  def index
    @bookmarks = Bookmark.joins(:kinds).group('kinds.name').count
  end
end
