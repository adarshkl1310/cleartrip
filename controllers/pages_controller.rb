class PagesController < ApplicationController
  before_action :find_pages, only:[:show, :edit, :update, :destroy]

  def home
  @pages = Page.all
  @page = Page.new
  end

  def create 
  @pages = Page.new(find_pages_params)
  if @pages.save
  redirect_to pages_path
  end  
  end

 def show
 end

 private

 def find_pages
   
  @pages = Page.find(params[:id])

 end
 
 def find_pages_params
  params.require(:page).permit(:name,:country,:message)

 end

end

