class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_with 用
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])   # 一覧表示用 用
    end
  end
end
