require './app/services/movie_db.rb'
class PopularTvShowsController < ApplicationController
  include MovieDb
  def index
    config = Tmdb::Configuration.get
    @base_url = config.images.base_url
    connection = MovieDb::PopularTvShows.new
    @popular_tv_shows =  connection.results
  end
  
end
