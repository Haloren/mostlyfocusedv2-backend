class TodosController < ApplicationController

    def create
        user = User.find(params[:user_id])
        # todo = Todo.new(todo_params)
        todo = user.todos.new(todo_params)
        if todo.save
            # render json: todo
            render json: user
        else
            render json: {message: todo.errors.full_messages.to_sentence}
        end
    end

    def destroy
        # debugger;
        todo = Todo.find_by(id: params[:id])
        user = User.find_by(id: todo.user_id)
        if todo
            todo.destroy
            render json: user
        else 
            render json: {message: "Delete failed"}
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:item, :user_id)
    end
end