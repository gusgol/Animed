class Service < ActiveRecord::Base
	belongs_to :client
	belongs_to :animal
	
end
