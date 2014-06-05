class UsersController < ApplicationController
<<<<<<< HEAD

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

 def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
=======
  def show
    @user = User.find(params[:id])
  end
   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
>>>>>>> sign-in-out

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

<<<<<<< HEAD
    
=======
    def destroy
    sign_out
    redirect_to root_url
  end
>>>>>>> sign-in-out
end