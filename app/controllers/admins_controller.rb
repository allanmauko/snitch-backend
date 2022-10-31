class AdminsController < ApplicationController
  wrap_parameters format:[]
  skip_before_action :verify_authenticity_token

  
  # GET /admins
  def index
    @admins = Admin.all
    render json: @admins
  end

  # GET /admins/1
  def show
    @admin = Admin.find_by(id:session[:admin_id])
    if @admin
    render json: @admin, status: :created
    else
    render json: @admin.errors, status: :unprocessable_entity
    end
  end

  # POST /admins
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
    # if @admin.valid?
      session[:admin_id] = @admin.id
      render json: @admin, status: :created, location: @admin
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admins/1
  def update
    if @admin.update(admin_params)
      render json: @admin
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admins/1
  def destroy
    @admin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end


    def admin_params
      params.permit(:username, :email, :password)
    end
end
