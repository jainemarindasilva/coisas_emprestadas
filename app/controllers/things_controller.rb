class ThingsController < ApplicationController

  def index
    @things = Thing.all
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy

    redirect_to things_path
  end

end
