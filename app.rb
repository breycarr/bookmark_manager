require 'sinatra/base'

require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new.show
    erb :'bookmarks/index'
  end
end
