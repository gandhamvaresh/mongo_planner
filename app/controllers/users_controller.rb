class UsersController < ApplicationController
  def index
  end

  def home
  end
  
  def contact
  end

  def new
   @plan = User.new
  end

  def create
   @plan = User.create(params[:user])
    if @plan.save
      redirect_to @plan

    end
  end

  def show
@plan = User.find(params[:id])
end

 def edit
  @plan = User.find(params[:id])
 end

 def my_plans
  @plans = User.all
 end

 def update
  @plan = User.find(params[:id])
 
  if @plan.update_attributes(params[:user])
       redirect_to @plan
   else
       render :action => "edit" 
      
    end
  end

  def destroy
  @plan = User.find(params[:id]) 
    if @plan.destroy(params[:user])
    redirect_to  my_plans_users_path(:id => "edit_plan")
    end
  end
end




  

