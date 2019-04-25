class TodoListsController < ApplicationController

    def index 
        @lists = TodoList.all
    end

    def new
        @list = TodoList.new
    end

    def create
        @list = TodoList.new(todo_list_params)
        @list.save
    end
    
    
    def show
    end

    def edit    
    end
    
    private
    def set_todo_list
        @list = TodoList.find(params[:id])
    end
    
    def todo_list_params
        params.require(:todo_list).permit(:title, :description)
    end
    

end
