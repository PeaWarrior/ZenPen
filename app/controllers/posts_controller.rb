class PostsController < ApplicationController

    before_action :set_post

    def index
        #change this to current_user.posts
        @posts = Post.all
    end

    def new
        #authorize user before creating
    end


    private

    def set_post
        @post = Post.new if params[:id]
    end

    def post_params
        params.require(:post).permit(:title, :content, :tags)
    end
end
