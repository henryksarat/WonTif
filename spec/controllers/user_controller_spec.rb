require 'spec_helper'
   
describe UsersController do
 it 'should create the user and show a sucess message' do
  post :create, { :user => FactoryGirl.attributes_for(:user) }
  
  flash[:notice].should =~ /User was successfully created./
 end
 it 'should note create the user' do
  post :create, { :user => FactoryGirl.attributes_for(:invalid_user) }
  
  flash[:notice].should == nil
  response.should render_template('new')
 end
end
