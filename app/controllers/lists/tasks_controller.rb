class Lists::TasksController < ApplicationController
  before_filter do
    @list = List.find(params[:list_id])
  end

  # GET /lists/tasks
  def index
    @tasks = @list.tasks.all
  end

  # GET /lists/tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /lists/tasks/new
  def new
    @task = Task.new
  end

  # GET /lists/tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /lists/tasks
  def create
    @task = Task.new(params[:task])
    @task.list = @list

    if @task.save
      redirect_to list_task_path(@list, @task), notice: 'Task was successfully created.'
    else
      render action: 'new'
    end
  end

  # PUT /lists/tasks/1
  def update
    @task = Task.find(params[:id])

    if @task.update_attributes(params[:task])
      redirect_to list_task_path(@list, @task), notice: 'Task was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /lists/tasks/1
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to list_tasks_path(@list)
  end
end
