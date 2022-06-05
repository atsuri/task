class TaskmanagementsController < ApplicationController
    def index
        @tasks = Taskmanagement.all
    end

    def show
        @task = Taskmanagement.find(params[:id])
    end

    def new
        @task = Taskmanagement.new()
    end

    def create
        @task = Taskmanagement.new(task_params)
        if @task.save
            redirect_to :root, notice: "課題登録が完了しました。"
        else
            render "new"
        end
    end

    def destroy
        @task = Taskmanagement.find(params[:id])
        @task.destroy
        redirect_to :taskmanagements, notice: "削除しました。"
    end

    private def task_params
        params.require(:taskmanagement).permit(
          :subject,
          :detail,
          :limit
        )
      end
end
