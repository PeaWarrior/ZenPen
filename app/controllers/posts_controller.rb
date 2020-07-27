class PostsController < ApplicationController

    before_action :set_post

    def index
        #change this to current_user.posts
        @posts = Post.all
    end
    
    def show
    end

    def new
        #authorize user before creating
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render :new
        end
    end

    def edit
    end

    def update
        @post.assign_attributes(post_params)
        @post.save ? (redirect_to @post) : (render :edit)
        end
    end


    private

    def set_post
        params[:id] ? (@post = Post.find(params[:id])) : (@post = Post.new)
    end

    def post_params
        params.require(:post).permit(:title, :content, :user_id, :tag_names)
    end
end
