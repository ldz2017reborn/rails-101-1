class Account::PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = current_user.posts
    end
      def destroy
       @posts = Posts.find(params[:id])
       @posts.destroy
       redirect_to posts_path
    end


    def show
        @posts = posts.find(params[:id])
    end


    def edit
      @posts = posts.find(params[:id])
    end

  end
