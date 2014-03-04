class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(params.permit(:title, :completed))

    if @todo.save
      render json: @todo
    else

    end
  end

  def update
    @todo = Todo.find(params['id'])

    if @todo.update_attributes(params.permit(:title, :completed))
      render json:@todo
    else
      render json:@todo
    end
  end

  def destroy
    @todo = Todo.find(params['id'])
    render json: @todo.destroy
  end
end
