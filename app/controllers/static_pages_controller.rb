class StaticPagesController < ApplicationController
  #before_filter :authenticate_user!, except: [:home, :about, :faq, :contact]

  def home
  end

  def about
  end

  def faq
  end

  def how_it_works
  end

  def contact
  end
end
