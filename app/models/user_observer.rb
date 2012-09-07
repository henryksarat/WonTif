class UserObserver < ActiveRecord::Observer
  def after_create(model)
    puts "Created a new user so let's send them an email"
  end
end
