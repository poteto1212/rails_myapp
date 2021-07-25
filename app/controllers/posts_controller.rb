class PostsController < ApplicationController
    #CROUD処理の時はPOSTパラメーター取得が必要な
    #取得用メソッドを自動で呼び出す設定
    before_action :find_post, only: [:show, :edit, :update, :destory]
    

    #基本の七個
    def index
    end

    def show
        @
    end

    def new
    end

    def edit
    end

    def create
    end

    def update
    end

    def destory
    end

    private

        def find_post
        end
    
end
