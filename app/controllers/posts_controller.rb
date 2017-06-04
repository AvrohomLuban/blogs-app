class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.where(is_published: true)
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content], is_published: false, userid: current_user.id)
    redirect_to "/posts/confirm/#{@post.id}"
  end

  def check
    @post = Post.find_by(id: params[:id])
    render 'confirm.html.erb'
  end

  def confirm 
    @post = Post.find_by(id: params[:id])
    @post.update(is_published: true)
    redirect_to '/posts'
  end

end
