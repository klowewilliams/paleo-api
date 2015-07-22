class Restaurant < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :phone, presence: true
  validates :rating, presence: true
end
