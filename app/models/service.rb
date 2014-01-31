class Service < ActiveRecord::Base
	belongs_to :client
	belongs_to :animal

	
	def self.search(search, page)
		if search
			begin
				if search.include? "/"
		  			date = Date.strptime(search, "%d/%m/%Y")
		  			paginate :per_page => 20, :page => page, 
				 			 :conditions => { :service_date => date }, 
							 :order => 'service_date DESC'
		  		else
		  			paginate :per_page => 20, :page => page, 
				 			 :conditions => ['name LIKE ? OR service_date LIKE ?', "%#{search}%", "%#{search}%"], 
				 			 :order => 'service_date DESC'		  		
		  		end
		  	rescue ArgumentError
		  		search.gsub! "/",""
		  		paginate :per_page => 20, :page => page, 
				 		 :conditions => ['name LIKE ? OR service_date LIKE ?', "%#{search}%", "%#{search}%"], 
				 		 :order => 'service_date DESC'	
		  	end
		else 
			paginate :per_page => 20, :page => page, :order => 'service_date DESC'	
		end
	end
end
