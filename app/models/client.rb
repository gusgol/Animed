class Client < ActiveRecord::Base
	validates :name, :cpf, :address, :telephone, :presence => true

	has_many :animals, dependent: :destroy
	has_many :services, dependent: :destroy

	def self.search(search, page)
		paginate :per_page => 5, :page => page, 
				 :conditions => ['name LIKE ? OR email LIKE ?', "%#{search}%", "%#{search}%"], 
				 :order => 'name'
	end
end
