class ChefApplicationController < ApplicationController
  def index
  end

  def new
    @chef_application = ChefApplication.new
  end

  def create
    @chef_application = ChefApplication.new(params[:chef_application])
  end

  def show
  end
end
