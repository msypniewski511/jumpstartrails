class PagesController < ApplicationController
  def index
  	@pages = Page.all
  end
  def main
    @page =Page.last
  end

  def about
  	@page =Page.first
  end
  def show
  	@page = Page.find(params[:id])
  end
  def portfolio
  end
end
