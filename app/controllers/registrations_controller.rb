class RegistrationsController < ApplicationController
    def index
        @users=User.all
    end
    def new
        @user=User.new
    end
    def show
        @user=User.find(params[:id])    
    end
    def create
       @user=User.new(user_params)
       if @user.save
            session[:user_id] = @user.id
            redirect_to user_path ,notice:"successfully created user"
        else
            render "new"
       end
    
    end 
    private
    def user_params
        params.require(:user).permit(:first_name,:last_name,:email,:phone_number,:password,:confirmation_password)
    end
end