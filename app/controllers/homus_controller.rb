class HomusController < ApplicationController
  def index
  end
  
  def about
    @time = (Time.now - Time.local(1992, 5, 27)) / (24 * 60 * 60 * 365)
  end
  
  def link
  end
  
  def make
  end
end
