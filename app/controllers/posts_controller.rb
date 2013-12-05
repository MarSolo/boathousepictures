class PostsController < ApplicationController

http_basic_authenticate_with name: "Mario", password: "rusty1984", except: [:index, :show]
 
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
  	@post = Post.new
  end
   
  def create
  	@post = Post.new(params[:post].permit(:title, :text))
   
      if @post.save
      	redirect_to @post
      else
      	render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
   
    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   
    redirect_to posts_url
  end

    private
  	  def post_params
  	    params.require(:post).permit(:title, :text)
  	  end

      def correct_user
        @post = current_admin.posts.find_by(id: params[:id])
        redirect_to posts_path, notice: "Not authorized to edit this post" if @post.nil?
      end


  end
