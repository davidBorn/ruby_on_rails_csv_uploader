class MenusController < ApplicationController
  def index
    @menus = Menu.all 
  end

  def import
    Menu.my_import(params[:file])
    redirect_to root_url, notice: "Successfully Imported Data!!"
  end
end
