class AdminsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # skip_before_action :verify_authenticity_token

        # GET /admin
          def index
            admins = Admin.all
            render json: admins
          end
        
         
          # POST get specific admin by checking if email exists
          def create
            admin = Admin.create!(admin_params)
            render json: admin, status: :created
          end
         

          def show
            admin = Admin.find(params[:id])
            render json: admin
          end
          
          # PATCH /admin/:id
          def update
            admin = find_admin
            if admin
              admin.update!(admin_params)
              render json: admin
            else
              render_not_found_response
            end
          end
        
          # DELETE /admin/:id
          def destroy
            admin = find_admin
            if admin
              admin.destroy
            else 
              render_not_found_response
            end
          end
          private

          def render_not_found_response
            render json: { error: "admin not found" }, status: :not_found
          end
        
          def admin_params
            params.permit(:id, :username, :email, :password)
          end
end
