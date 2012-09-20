require 'spec_helper'
describe User do
  before do
    @user = User.new(email: "h@aol.com", email_confirmation: "h@aol.com", first_name: "henryk", last_name: "sarat")
  end

  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when emails don't match" do
    before { @user.email = "fake@aol.com" }
	before { @user.email_confirmation = "fake@aol.net" }
    it { should_not be_valid }
  end

  describe "when email is not valid" do
    before { @user.email = "fake@aol" }
	before { @user.email_confirmation = "fake@aol" }
    it { should_not be_valid }
  end
end