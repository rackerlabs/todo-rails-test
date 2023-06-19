class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists
  end

  def show
    @list = List.find(params[:id])
    render json: @list
  end

  def create 
    @list = List.new(list_params)

    if @list.save
      render json: 'success'
    else
      rennder json 'error', error: @list.errors
    end
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
  
