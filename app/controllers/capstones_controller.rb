class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render json: @capstones
  end
end
