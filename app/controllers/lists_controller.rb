class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(params.require(:list).permit(:name, :photo))
    if @list.save
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end
end
