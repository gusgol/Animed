class Client < ActiveRecord::Base
	has_many :animals, dependent: :destroy
	has_many :services, dependent: :destroy

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"], :order => 'name')
  		else
    		find(:all, :order => 'name')
  		end
	end
end
