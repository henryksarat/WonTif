class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :terms_of_service
  
  validates :email, :presence => true,
  		    :format => { 
  		    	:with => /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/, 
  		    	:message => " invalid!!"
  		    }    
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :terms_of_service, :acceptance => true
end
