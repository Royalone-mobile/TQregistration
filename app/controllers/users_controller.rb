class UsersController < ApplicationController

def index

end

def new
  @user = User.new
end

def show
  @user = User.find(params[:id])
end

def create
  @user = User.create( user_params )

  if @user.save
     redirect_to pages_checkedin_path(@user), notice: "User successfully created"
  else
     render :new
  end
end


def update
end

def delete
end


private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :company, :email, :newsletter)
  end


end
