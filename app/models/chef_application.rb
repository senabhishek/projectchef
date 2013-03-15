class ChefApplication < ActiveRecord::Base
  attr_accessible :about_me, :city, :email, :first_name, :last_name, :motivation, :phone_number, :profile_pic

  def self.new_application(application)
    new_chef = ChefApplication.new(
                :first_name => application[:first_name],
                :last_name => application[:last_name],
                :email => application[:email],
                :city => application[:city],
                :phone_number => application[:phone_number].gsub(/[^0-9]/, "").to_i,
                :about_me => application[:about_me],
                :motivation => application[:motivation])
    new_chef.save
  end
end
