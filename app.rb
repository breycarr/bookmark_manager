require 'sinatra/base'

require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base

enable :sessions

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    session[:bookmarks] = Bookmarks.new
    @bookmarks = session[:bookmarks]
    erb :'bookmarks/index'
  end

  post '/bookmarks/add' do
    session[:url] = params[:URL]
    session[:bookmarks].add(params[:URL])
    redirect '/bookmarks/add'
  end

  get '/bookmarks/add' do
    @url = session[:url]
    erb :'bookmarks/add'
  end
end
