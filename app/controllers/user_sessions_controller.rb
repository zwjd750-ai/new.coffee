class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "ログインしました"
    else
      flash.now[:alert] = "ユーザー名が正しくありません"
      render :new
    end
  end
end
