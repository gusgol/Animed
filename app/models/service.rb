class Service < ActiveRecord::Base
	belongs_to :client
	belongs_to :animal

	
	def self.search(search)
		if search
			begin
				if search.include? "/"
		  			date = Date.strptime(search, "%d/%m/%Y")
		  			find(:all, :conditions => { :service_date => date })
		  		else
		  			find(:all, :conditions => ['name LIKE ? OR service_date LIKE ?', "%#{search}%", "%#{search}%"], :order => 'name')
		  		end
		  	rescue ArgumentError
		  		search.gsub! "/",""
		  		find(:all, :conditions => ['name LIKE ? OR service_date LIKE ?', "%#{search}%", "%#{search}%"], :order => 'name')
		  	end
  		else
    		find(:all, :order => 'name')
  		end
	end
end
