ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect :links
  end

  get '/links' do
    @links = Bookmark.all
    erb :'links/index'
  end

  get '/links/new' do
  	erb :'links/new'
  end

   post '/links' do
     bookmark = Bookmark.new(url: params[:url], name: params[:name])
     tag = Tag.create(name: params[:tags])
     bookmark.tags << tag
     bookmark.save
     redirect to('/links')
   end

  run! if app_file == $0
end
