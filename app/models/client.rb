class Client < ActiveRecord::Base
	has_many :animals, dependent: :destroy
	has_many :services, dependent: :destroy
end
