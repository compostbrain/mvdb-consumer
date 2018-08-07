module MovieDb
  include Tmdb
  class PopularTvShows
    attr_reader :popular_tv_shows

    def initialize page: 1
      @popular_tv_shows = Tmdb::Discover.tv
    end

    def results
      self.popular_tv_shows.results
    end
    

    def names
      @popular_tv_shows.popular_tv_shows.results.map(&:name)
    end
    
    
  end
  
end