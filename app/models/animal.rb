class Animal < ActiveRecord::Base
	belongs_to :client
	has_many :services, dependent: :destroy
	
	mount_uploader :image_url, ImageUrlUploader

	def self.search(search, page)
		paginate :per_page => 15, :page => page, 
				 :conditions => ['name LIKE ? OR species LIKE ? OR race LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"], 
				 :order => 'name'
	end
end
