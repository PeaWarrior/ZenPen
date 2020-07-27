class PostsController < ApplicationController
    before_action :set_post
    before_action :search, only: [:index]

    def index
        @posts = search
    end
    
    def show
    end

    def new
        #authorize user before creating
    end

    def create
        @post = Post.new(post_params)
        @post.save ? (redirect_to @post) : (render :new)
    end

    def edit
    end

    def update
        @post.assign_attributes(post_params)
        @post.save ? (redirect_to @post) : (render :edit)
    end

    def destroy
        @post.destroy
        redirect_to root_path
    end

    private

    def searched_posts
        current_user.posts.select do |post|
            post.tags.pluck(:name).include?(params[:search])
        end
    end

    def search
        params[:search] ? (searched_posts) : (current_user.posts)
    end

    def set_post
        params[:id] ? (@post = Post.find(params[:id])) : (@post = Post.new)
    end

    def post_params
        params.require(:post).permit(:title, :content, :user_id, :tag_names)
    end

end
