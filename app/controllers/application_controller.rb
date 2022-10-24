class ApplicationController < ActionController::API
    include ActionController::Cookies


    def current_user
        if session[:user_id]
          User.find_by(id: session[:user_id])
        end
    end

end