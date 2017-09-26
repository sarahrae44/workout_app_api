class BodiesController < ApplicationController
  before_action :set_body, only: [:show, :update, :destroy, :edit]

  # GET /bodies
  def index
    @bodies = Body.all

    render json: @bodies.to_json(include: :exercises)
  end

  # GET /bodies/1
  def show
    # @boby = Body.find(params[:id])
    render json: @body.to_json(include: :exercises)
  end

  # POST /bodies
  def create
    @body = Body.new(body_params)

    if @body.save
      render json: @body.to_json, status: :created, location: @body
    else
      render json: @body.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bodies/1
  def update
    # body = Body.find(params[:id])
    #
    # body.update(body_params)
    #
    # render json: {status: 200, body: body}
    @body = Body.find(params[:id])
    if @body.update(body_params)
      render json: @body
    else
      render json: @body.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bodies/1
  def destroy
    # @body = Body.find(params[:id])
    @body.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body
      @body = Body.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def body_params
      params.require(:body).permit(:musclename, :img)
    end
end
