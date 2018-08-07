require 'rails_helper'

RSpec.describe "movie_db service", type: :service do

  describe "popular tv shows service" do
    let(:fake_service) { instance_double(MovieDb::PopularTvShows)  } 
    it "can get a list of popular tv shows" do
      allow(MovieDb::PopularTvShows).to receive(:new).and_return(fake_service)
      allow(fake_service).to receive(:results).and_return(["The David Letterman Show", "The Big Bang Theory"])
      popular_tv_shows = MovieDb::PopularTvShows.new
      results = popular_tv_shows.results
      expect(fake_service).to have_received(:results)
      expect(MovieDb::PopularTvShows).to have_received(:new)
      expect(results).to eq(["The David Letterman Show", "The Big Bang Theory"])
    end

    it "description" do
      
    end
    
    
  end
  
  
  
end
