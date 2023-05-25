class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy ]
  def index 
    @posts = Post.all
  end


  def new
    @post = Post.new
  end
  

  def create
    @post = Post.new(post_params)

    if @post.save 
      redirect_to  posts_path
    else
      render :new
    end

    def edit
    end

    def update
       if @post.update(post_params)
        redirect_to posts_path
       else
        render :edit
       end
    end

    def destroy
      @post.destroy
      redirect_to posts_path
    end

    def destroy_all
      
      @posts = Post.all
      @posts.destroy_all
      redirect_to posts_path, notice: "全削除しました。" 
    end

    # def destroy_all
    #   Post.destroy_all
    #   redirect_to posts_path,  notice: "全削除しました。" 
    # end
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end
  

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
