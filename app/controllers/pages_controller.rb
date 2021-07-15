class PagesController < ApplicationController
  def interiors
    @posts = Blog.all
  end

  def about
  end

  def services
  end

  def contact
  end

  def design_boards

  end
end
