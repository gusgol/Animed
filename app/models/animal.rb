class Animal < ActiveRecord::Base
	
	belongs_to :client
	has_many :services

	mount_uploader :image_url, ImageUrlUploader
end
