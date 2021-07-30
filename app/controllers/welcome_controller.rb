class WelcomeController < ApplicationController
  def index
    #投稿内容一番を取得
    @posts=Post.all.order(created_at: :desc)
  end
end
