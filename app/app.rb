require 'sinatra/base'
require_relative 'data_mapper_setup.rb'


class Controller < Sinatra::Base

  set :views, proc { File.join(root, 'views')}

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
   link = Link.create(url: params[:url], title: params[:title])
   tag = Tag.create(name: params[*:tag])
   link.tags << tag
   link.save
   redirect to('/links')
  end

  get '/links/new' do
    erb :'links/new'
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

end
