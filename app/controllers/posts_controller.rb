class PostsController < ApplicationController
    #CROUD処理の時はid取得が必要
    #取得用メソッドを自動で呼び出す設定
    before_action :find_post, only: [:show, :edit, :update, :destory]
    


    
    #基本の七個
    def index
        @posts=Post.all
    end

    def show
        
    end

    def new
        @post=Post.new
    end

    def edit
    end

    def create
        @post=Post.new(post_params)

        if @post.save
            redirect_to action: :index, notice: "投稿に成功しました"
        else
            render :new
        end
    end

    def update
        if @post.update(post_params)
            redirect_to post_path, notice: "投稿を更新しました"
        else
            render :new
        end
    end

    def destory

        if @post.destory
            redirect_to root_path, notice: "投稿を削除しました"
        else
            redirect_to root_path, alert: "投稿を削除できませんでした"
        end
    end

    private
        #ストロングパラメーター
        def post_params
            params.require(:post).permit(
                :content
            )
        end
        def find_post
            @post=Post.find(params[:id])
        end
    
end
