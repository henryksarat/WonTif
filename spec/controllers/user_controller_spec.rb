require 'spec_helper'

    #m = mock('movie1')
    #m.stub(:title).and_return ('Rambo')
    
    #shrotcut:
    #m=mock('movie1', :title => 'Rambo')
    

    
   # # in spec/factories/movie.rb
   # FactoryGirl.define do
     # factory :movie do
        #title 'A Fake Title' # default values
       # rating 'PG'
      #  release_date { 10.years.ago }
     # end
    #end
   # # in your specs
  #  it 'should include rating and year' do
 #     movie = FactoryGirl.build(:movie, :title => 'Milk')
      # etc.
#    end
    

    
describe UsersController do
 it 'should create the movie and show a sucess message' do
  post :create, { :user => FactoryGirl.attributes_for(:user) }
  
  flash[:notice].should =~ /User was successfully created./
 end
end

=begin
describe UserController do
describe 'searching TMDb' do
it 'should call the model method that performs TMDb search' do
  Movie.should_receive(:find_in_tmdb).with('hardware')
  post :search_tmdb, {:search_terms => 'hardware'}
end

it 'should select the Search Results template for rendering' do
Movie.stub(:find_in_tmdb)
post :search_tmdb, {:search_terms => 'hardware'}
response.should render_template('search_tmdb')
end

it 'should make the TMDb search results available to that template' do
fake_results = [mock('Movie'), mock('Movie')]
Movie.stub(:find_in_tmdb).and_return(fake_results)
post :search_tmdb, {:search_terms => 'hardware'}
# look for controller method to assign @movies
assigns(:movies).should == fake_results
end

end




  describe 'searching Tmdb by keyword' do
    context 'with valid key' do
      it 'should call Tmdb with title keywords given valid API key' do
	TmdbMovie.should_receive(:find).
	  with(hash_including :title => 'Inception')
	Movie.find_in_tmdb('Inception')
      end
    end
    context 'with invalid key' do
      it 'should raise InvalidKeyError if key not given' do
	Movie.stub(:api_key).and_return('')
	lambda { Movie.find_in_tmdb('Inception') }.
	  should raise_error(Movie::InvalidKeyError)
      end
      it 'should raise InvalidKeyError if key is bad' do
	TmdbMovie.stub(:find).
	  and_raise(RuntimeError.new('API returned code 404'))
	lambda { Movie.find_in_tmdb('Inception') }.
	  should raise_error(Movie::InvalidKeyError)
      end
    end
  end
end
=end

