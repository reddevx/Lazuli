class UsersController < ApplicationController

  before_action :require_logged_in_user, only: [:show, :edit, :update]

  def new
    redirect_to user_posts_path(current_user) if user_signed_in?
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    Rails.logger.debug "User params: #{user_params.inspect}"
    if @user.save
      flash[:success] = 'Cadastro realizado com sucesso'
      redirect_to root_url
    else
      Rails.logger.debug "User errors: #{@user.errors.full_messages}"
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:success] = 'Dados atualizados com sucesso'
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
    end

end
