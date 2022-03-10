class ThingsController < ApplicationController

  def index
    @things = Thing.all
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(thing_params)
    if (@thing.save)
      redirect_to things_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy

    redirect_to things_path
  end

  private

  def thing_params
    params.require(:thing).permit(:description)
  end

end
