class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists
  end
end
  
