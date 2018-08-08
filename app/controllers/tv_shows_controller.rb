class TvShowsController < ApplicationController

  def show_details
    config = Tmdb::Configuration.get
    @base_url = config.images.base_url
    @show = Tmdb::TV.detail(params[:show_id])
  end
  
end
