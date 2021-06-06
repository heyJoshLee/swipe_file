class IndustriesController < ApplicationController
  def show
    @industry = Industry.find_by(slug: params[:slug])
    @posts = @industry.posts
  end
end