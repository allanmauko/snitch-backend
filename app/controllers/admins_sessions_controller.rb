class AdminsSessionsController < ApplicationController

    before_action :authorize
    skip_before_action :verify_authenticity_token
    skip_before_action :authorize, only: [:create]
  
  #   user
    def create 
  
      admin = Admin.find_by(email: params[:email])
      if admin
        session[:admin_id] = admin[:id]
        render json: user, status: :ok
      else
        render json: { errors: ["Invalid email or password"] }, status: :unauthorized
      end
    end 
  
    def show
      admin = Admin.find_by(id: session[:admin_id])
      if admin
        render json: admin
      else
        render json: { error: "Not authorized" }, status: :unauthorized
      end
    end
    
  
    def destroy
      session.delete :dmin_id
      render json: {message: "logged_out"}, status: :ok
    end
     
      private
    
      
      def authorize
        render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :admin_id
      end
  

end