class PagesController < ApplicationController
  def index
  	@pages = Page.all
  end
  def main
    @page =Page.where(slug: 'main-layout').first
  end

  def about
  	@page =Page.where(slug: 'about-jump-start-rails').first
  end

  def rout
  	@page = Page.where(slug: 'routes-as-array').first
  end

  def table
  	@page = Page.where(slug: 'tabele-css').first
  end

  def contact
  end
end
