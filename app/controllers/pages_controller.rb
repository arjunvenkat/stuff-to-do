class PagesController < ApplicationController
  def home
    if params['search']
      @places = Place.where(category: params['search']) 
    else
      @places = Place.all
    end
    
  end
end