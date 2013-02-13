class User < ActiveRecord::Base
  attr_accessible :first_name, :phone

  validates :first_name, :presence => true
  validates :phone, :presence => true
end
