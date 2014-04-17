class ListsController < ApplicationController
  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1
  def show
    @list = List.find(params[:id])
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
    @tasks = @list.tasks.all
    @list.tasks.build
  end

  # POST /lists
  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render action: 'show', status: :created, location: @list }
      else
        format.html { render action: 'new' }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end

    # if @list.save
    #   redirect_to @list, notice: 'List was successfully created.'
    # else
    #   render action: "new"
    # end
  end

  # PUT /lists/1
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])

        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end

    # if @list.update_attributes(params[:list])
    #   redirect_to @list, notice: 'List was successfully updated.'
    # else
    #   render action: "edit"
    # end
  end

  # DELETE /lists/1
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
  end
end
