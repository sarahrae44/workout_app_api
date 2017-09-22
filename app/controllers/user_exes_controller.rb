class UserExesController < ApplicationController
  before_action :set_user_ex, only: [:show, :update, :destroy]

  # GET /user_exes
  def index
    @user_exes = UserEx.all

    render json: @user_exes.to_json(include: [:user, :exercise])
  end

  # GET /user_exes/1
  def show
    render json: @user_ex.to_json(include: [:user, :exercise])
  end

  # POST /user_exes
  def create
    @user_ex = UserEx.new(user_ex_params)

    if @user_ex.save
      render json: @user_ex, status: :created, location: @user_ex
    else
      render json: @user_ex.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_exes/1
  def update
    if @user_ex.update(user_ex_params)
      render json: @user_ex
    else
      render json: @user_ex.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_exes/1
  def destroy
    @user_ex.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_ex
      @user_ex = UserEx.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_ex_params
      params.require(:user_ex).permit(:user_id, :exercise_id, :userexid)
    end
end
