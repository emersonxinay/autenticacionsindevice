class SessionsController < ApplicationController
    def destroy
          reset_session
          redirect_to root_path
    end
    def new
      @user = User.new
    end
    def create
        @user = User.find_by(email: params[:user][:email])
        if @user.nil?
            redirect_to users_sign_in_path, alert: "el usuario o password no existe"
          end
        if @user.password == params[:user][:password]
          session[:user_id] = @user.id
          redirect_to root_path, alert: "ingresaste"
        else
          redirect_to users_sign_in_path, alert: "el usuario o password no existe"
        end
    end


end
