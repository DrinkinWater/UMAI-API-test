class OwnersController < ApplicationController
  def index
    @owners = Owner.all
    render json: {
      owners: @owners.as_json(only: [:name])
      }
  end
  def show
    @owner = Owner.find_by_name(params[:owner_name])

    if @owner
      render json: @owner.as_json(only: [:name])
    end
  end
end
