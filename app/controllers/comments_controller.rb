class CommentsController < ApplicationController

  def create
    @post = Post.find_by(slug: params[:post_slug])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save
      flash[:success] = "Comment successfully posted."
      redirect_to @post
    else
      flash.now[:danger] = "Comment not posted."
      render 'posts/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end