class TypesController < ApplicationController

  def show
    @type = Type.find_by(slug: params[:slug])
    @posts = @type.posts 
  end
end