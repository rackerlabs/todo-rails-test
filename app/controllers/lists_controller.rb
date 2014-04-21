class ListsController < ApplicationController
  respond_to :json, :html

  # GET /lists
  def index
    respond_with(@lists = List.all)
  end

  # GET /lists/1
  def show
    respond_with(@list = List.find(params[:id]))
  end

  # GET /lists/new
  def new
    respond_with(@list = List.new)
  end

  # GET /lists/1/edit
  def edit
    respond_with(@list = List.find(params[:id]))
  end

  # POST /lists
  def create
    @list = List.new(params[:list])

    if @list.save
      flash[:notice] = "List was successfully created."
      respond_with(@list)
    else
      render action: "new"
    end
  end

  # PUT /lists/1
  def update
    @list = List.find(params[:id])

    if @list.update_attributes(params[:list])
      flash[:notice] = "List was successfully updated"
      respond_with(@list)
    else
      render action: "edit"
    end
  end

  # DELETE /lists/1
  def destroy
    if @list = List.find(params[:id])
      @list.destroy
      flash[:notice] = "List was destroyed"
      redirect_to lists_url
    else 
      flash[:notice] = "List could not be destroyed"
      redirect_to lists_url
    end
  end
end
