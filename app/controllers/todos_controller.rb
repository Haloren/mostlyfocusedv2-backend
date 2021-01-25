class TodosController < ApplicationController
    before_action :set_user

    def create
        # todo = Todo.new(todo_params)
        todo = @user.todos.new(todo_params)
        if todo.save
            # render json: todo
            render json: @user
        else
            render json: {message: todo.errors.full_messages.to_sentence}
        end
    end

    def destroy
        # debugger;
        todo = Todo.all.find_by(id: params[:id])
        user = User.find(todo.user_id)
        if todo
            todo.destroy
            render json: user
        else 
            render json: {message: "Delete failed"}
        end
    end

    private
    def set_user
        @user = User.find(params[:user_id])
    end

    def todo_params
        params.require(:todo).permit(:item, :user_id)
    end
end