class PostsController < ApplicationController

  def new
    @post = Post.new
    @types = Type.all
    @industries = Industry.all
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = "Post successfully saved."
      redirect_to @post
    else
      @types = Type.all
      @industries = Industry.all
      flash.now[:danger] = "Post was not created"
      render :new
    end
  end

  def show
    @post = Post.find_by(slug: params[:slug])
  end

  private


  def post_params
    params.require(:post).permit(:title, :body, :type_id, :industry_id)
  end


end