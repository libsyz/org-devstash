class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def studio
  end
end
