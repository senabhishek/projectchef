class ChefApplicationController < ApplicationController
  def index
  end

  def new
    @chef_application = ChefApplication.new
  end

  def create
    if ChefApplication.find_by_email(params[:chef_application][:email])
      flash.notice = "You've already applied. Please wait for our response."
      redirect_to root_url
    else
      new_chef = ChefApplication.new_application(params[:chef_application])
      if new_chef
        flash.notice = "Thank you for your application! We will get back to you soon."
        redirect_to root_url
      else
        flash.notice = "Something went wrong during the application process. Please try again."
        redirect_to root_url
      end
    end
  end

  def show
    @incoming_chef_applications = ChefApplication.all
  end
end
