class PagesController < ApplicationController
  def home
    if params['search']
#       @places = Place.where(category: params['search']) 
      places_by_category = Place.where("category LIKE '%#{params['search']}%'")
      places_by_address = Place.where("address LIKE '%#{params['search']}%'")
  
    @places = places_by_category + places_by_address
    else
      @places = Place.all
    end
  end
end