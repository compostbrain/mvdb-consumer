require './app/services/movie_db.rb'
class PopularTvShowsController < ApplicationController
  include MovieDb
  def index
    config = Tmdb::Configuration.get
    @base_url = config.images.base_url
    connection = MovieDb::PopularTvShows.new
    @popular_tv_shows =  connection.results
  end

  def show_details
    @popular_tv_show = params[:show]
  end

  def search
    config = Tmdb::Configuration.get
    @base_url = config.images.base_url
    response= Tmdb::Search.tv(params[:search_tv_shows])
    if response.results.any?
      @popular_tv_shows = response.results
    else
      redirect_to popular_tv_shows_path, alert: "No Results"
    end
  end
  
  
end
