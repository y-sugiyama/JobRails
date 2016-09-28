class PagesController < ApplicationController
  def top
  end
  
  def news
    @posts = Post.all
    
    @posts = Post.order(:created_at).page(params[:page])
  end
end

