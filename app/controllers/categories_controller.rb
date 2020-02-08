class CategoriesController < ApplicationController
  before_action :allow_params

  def show
    @category = Category.find(params[:id])
    @listings = @category.listings
  end

  private

  def allow_params
    params.permit!
  end
end
