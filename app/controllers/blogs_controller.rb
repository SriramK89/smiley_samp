class BlogsController < ApplicationController
  def new
  	@blog = Blog.new
  end

  def create
  	@blog = Blog.new(params[:blog])
  	if @blog.save
  	  redirect_to @blog
  	else
  	  render 'new'
  	end
  end

  def index
  	@blogs = Blog.all
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def update
  	@blog = Blog.find(params[:id])
  	if @blog.update_attributes(params[:blog])
  	  redirect_to @blog
  	else
  	  render 'edit'
  	end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.delete
    redirect_to root_path
  end
end
