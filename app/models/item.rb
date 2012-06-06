class Item < ActiveRecord::Base
  belongs_to :supplier

  validates :name, :presence => true
  validates :price, :presence => true, :numericality => true
end
