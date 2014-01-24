class Client < ActiveRecord::Base
	validates :name, :cpf, :address, :telephone, :presence => true

	has_many :animals, dependent: :destroy
	has_many :services, dependent: :destroy

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ? OR email LIKE ?', "%#{search}%", "%#{search}%"], :order => 'name')
  		else
    		find(:all, :order => 'name')
  		end
	end
end
