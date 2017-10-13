class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@latest = Post.last
  end

  def show
  	@posts = Post.all
  	@post = Post.friendly.find(params[:id])
  	@latest = Post.last
  end
  

end
