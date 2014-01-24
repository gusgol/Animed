class Animal < ActiveRecord::Base
	belongs_to :client
	has_many :services
	
	mount_uploader :image_url, ImageUrlUploader

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ? OR species LIKE ? OR race LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"], :order => 'name')
  		else
    		find(:all, :order => 'name')
  		end
	end
end
