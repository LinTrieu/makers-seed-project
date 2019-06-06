require 'sinatra/base'
require './database_connection_setup'
require './lib/post'


class Blog < Sinatra::Base
  enable :sessions

  get '/' do
    @posts = Post.all
    erb :index
  end

  get '/post/new' do
    erb :new_post
  end

  run! if app_file == $0
end
