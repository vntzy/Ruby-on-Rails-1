require 'sinatra/base'
require_relative 'models/Post'

class Blog < Sinatra::Base

  $posts = {}

  get '/' do
    erb :'posts.html', :locals => {:posts => $posts.values}
  end

  get '/new' do
    erb :'create.html'
  end

  post '/new' do
    new_post = Post.new(params[:text])
    $posts[new_post.id] = new_post
    "Created."
  end

  get '/:id' do
    post = $posts[params[:id].to_i]
    erb :'single_post.html', :locals => {:post => post}
  end

  delete '/:id' do
    if $posts[params[:id].to_i]
      $posts.delete params[:id].to_i
      return "Deleted."
    else
      "No such post."
    end
  end

  get '/search/:tag' do
    found_posts = $posts.values.find_all {|post| post.has_tag? params[:tag].to_sym }
    erb :'posts.html', :locals => {:posts => found_posts}
  end
end