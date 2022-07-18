class SessionsController < ApplicationController
    def new
            
    end
    def create
        user=User.find_by(email:params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id]= user.id
            redirect_to user_path , notice:"Login successfully"
        else
            flash[:alert]="Invalid email password"
            render "new"
        end
              
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to sign_in_path ,notice:"logout successfuly"
    end
end
