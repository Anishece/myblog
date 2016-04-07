class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    
    @post = Post.new
    @category = Category.all
  end
  
  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to posts_path, :notice => "Your post has been saved"
    else
      render "new"
    end  
  end
  
  def edit
     @post = Post.find(params[:id])  
  end
  
  def update
    @posts = Post.find(params[:id])
    
    if @posts.update_attributes(params[:post].permit!) 
       redirect_to post_path, :notice => "Your post has been updated"
    else
       render "edit"
    end  
  end
  
  def show
    @posts = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post has beeen deleted"
  end  

  private
    def post_params
       params.require(:post).permit!
    end
end
