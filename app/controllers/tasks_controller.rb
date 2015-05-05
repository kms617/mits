class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:notice] = t('flashes.tasks.create.success')
      redirect_to new_task_path
    else
      flash[:alert] = t('flashes.tasks.create.failure')
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :priority)
  end
end
