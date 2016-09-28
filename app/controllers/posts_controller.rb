class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

   
      if @post.save
        redirect_to posts_path, notice:'お知らせ登録が完了しました'
      else
        render :new
      end
    
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
   
      if @post.update(post_params)
        redirect_to posts_path, notice:'お知らせの編集が完了しました'
      else
       render :edit
      
      end
    
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
