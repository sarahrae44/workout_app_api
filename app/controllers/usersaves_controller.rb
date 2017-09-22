class UsersavesController < ApplicationController
  before_action :set_usersafe, only: [:show, :update, :destroy]

  # GET /usersaves
  def index
    @usersaves = Usersafe.all

    render json: @usersaves.to_json(include: [:user, :group])
  end

  # GET /usersaves/1
  def show
    render json: @usersafe.to_json(include: [:user, :group])
  end

  # POST /usersaves
  def create
    @usersafe = Usersafe.new(usersafe_params)

    if @usersafe.save
      render json: @usersafe, status: :created, location: @usersafe
    else
      render json: @usersafe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usersaves/1
  def update
    if @usersafe.update(usersafe_params)
      render json: @usersafe
    else
      render json: @usersafe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usersaves/1
  def destroy
    @usersafe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersafe
      @usersafe = Usersafe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usersafe_params
      params.require(:usersafe).permit(:user_id, :group_id, :usergroupid)
    end
end
