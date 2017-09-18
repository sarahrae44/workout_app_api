class GroupsController < ApplicationController
  # before_action :set_group, only: [:show, :update, :destroy, :create]

  # GET /groups
  def index
    @groups = Group.all

    render json: @groups.to_json(include: [:body, :exercise])
  end

  # GET /groups/1
  def show
    render json: @group.to_json(include: [:body, :exercise])
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group.to_json, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:body_id, :exercise_id, :groupname
      # , { bodies_attributes: [:id, :musclename, :img ]}, exercises_attributes: [:id]
      )
    end
end
