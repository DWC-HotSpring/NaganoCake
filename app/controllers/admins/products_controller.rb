class Admins::ProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    
  end

  def edit
  end

  private
  params.require(:product).permit(:name, :price, :genre_id, :is_active, :description, :image)
  params.require(:genre).permit(:name, :is_active)
end
