class MembershipsController < ApplicationController
  def create
    @membership = Membership.create({:group_id=>params[:id], 
                                     :user_id=>current_user.id})
    @group = Group.where(:group_id => params[:id])
    
    if @membership.save
      respond_to do |format|
        format.html { redirect_to @group }
        format.xml 
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @group }
        format.xml 
        format.js 
      end
    end
   
   
  #  @group = Group.where(:id => params[:id])
  #  current_user.join!(@group)
  #  respond_to do |format|
  #    format.html { redirect_to @group }
  #    format.js
  #  end
  end
  
  def destroy
     @group = Membership.find(params[:membership][:group_id])
    # @group = Group.find(params[:membership][:group_id])
     current_user.leave!(@group)
     respond_to do |format|
       format.html { redirect_to @group }
       format.js
     end
  end
  
  def index
    @memberships = Membership.all
  end

end
