require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
  
  describe "memberships" do
    
    it "should have a member? method" do
      @user.should respond_to(:member?)
    end
    
    it "should have a join! method" do
      @user.should respond_to(:join!)
    end
    
    it "should join a group" do
      @user.join!(@group)
      @user.should be_member(@group)
    end
    
    it "should have a leave! method" do
      @user.should respond_to(:leave!)
    end
    
  end
end
