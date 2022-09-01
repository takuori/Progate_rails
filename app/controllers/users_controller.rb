class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.jpg",
      password: params[:password]
    )
    if @user.save
      flash[:notice] = "新規登録完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render "users/new"
    end
  end
end
