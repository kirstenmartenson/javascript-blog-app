class Api::PostsController < ApplicationController

  def index
    @posts = Post.all
    render 'index.json.jbuilder'
  end

  def create
    @post = Post.new(
      title: params["title"],
      body: params["body"],
      )
    @post.save
    render 'index.json.jbuilder'
  end
  
end
