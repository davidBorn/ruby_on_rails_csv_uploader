class MenusController < ApplicationController
  def index
    
    @categories = Menu.categories
    @Menu = Menu.all.to_a
    @MenuItems = @Menu.group_by {|i| i.catagory}
    
   
  end

  def show
    @items = Menu.where(catagory: params[:category])
  end

  def import
    Menu.delete_all
    Menu.my_import(params[:file])
   
    redirect_to root_url, notice: "Successfully Imported Data!!"
  end
end
