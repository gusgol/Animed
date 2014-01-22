class Animal < ActiveRecord::Base
	mount_uploader :image_url, ImageUrlUploader
	belongs_to :client
	has_many :services
end
