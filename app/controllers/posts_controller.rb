class PostsController < ApplicationController
    before_action :set_post

    def index
        @posts = search
    end
    
    def show
    end

    def new
        #authorize user before creating
        @prompt = flash[:notice]
    end

    def prompt  
        flash[:notice] = WritingPrompt.random_prompt
        redirect_to new_post_path
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
        redirect_to posts_path
    end

    private

    
    def set_post
        params[:id] ? (@post = Post.find(params[:id])) : (@post = Post.new)
    end
    
    def post_params
        params.require(:post).permit(:title, :content, :user_id, :tag_names)
    end
    
    def search
        params[:search] ? (searched_posts) : (current_user.posts)
    end

    def searched_posts
        if params[:search].blank?
            current_user.posts
        else
            Post.search(current_user, params[:search])
        end
    end

end
