class Restoration < ActiveRecord::Base
	validates :instrument, :presence => true 
	validates :description, :presence => true 
	validates :price_offer, :presence => true
	
	belongs_to :client
end
