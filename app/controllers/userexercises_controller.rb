class UserexercisesController < ApplicationController
  before_action :set_userexercise, only: [:show, :update, :destroy]

  # GET /userexercises
  def index
    @userexercises = Userexercise.all

    render json: @userexercises
  end

  # GET /userexercises/1
  def show
    render json: @userexercise
  end

  # POST /userexercises
  def create
    @userexercise = Userexercise.new(userexercise_params)

    if @userexercise.save
      render json: @userexercise, status: :created, location: @userexercise
    else
      render json: @userexercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userexercises/1
  def update
    if @userexercise.update(userexercise_params)
      render json: @userexercise
    else
      render json: @userexercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userexercises/1
  def destroy
    @userexercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userexercise
      @userexercise = Userexercise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userexercise_params
      params.require(:userexercise).permit(:user, :references, :group, :references, :usergroupid, :integer)
    end
end
