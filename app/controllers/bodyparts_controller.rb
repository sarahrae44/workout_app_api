class BodypartsController < ApplicationController
  before_action :set_bodypart, only: [:show, :update, :destroy]

  # GET /bodyparts
  def index
    @bodyparts = Bodypart.all

    render json: @bodyparts
  end

  # GET /bodyparts/1
  def show
    render json: @bodypart
  end

  # POST /bodyparts
  def create
    @bodypart = Bodypart.new(bodypart_params)

    if @bodypart.save
      render json: @bodypart, status: :created, location: @bodypart
    else
      render json: @bodypart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bodyparts/1
  def update
    if @bodypart.update(bodypart_params)
      render json: @bodypart
    else
      render json: @bodypart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bodyparts/1
  def destroy
    @bodypart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodypart
      @bodypart = Bodypart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bodypart_params
      params.require(:bodypart).permit(:name, :img)
    end
end
