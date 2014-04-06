class LawyersController < ApplicationController
	def index
		
	end

	def show
		if params[:lawyer]
			@services = Service.find_by_sql("select services.* from services inner join lawyers on lawyers.lawyer_code=services.lawyer_code where location='#{params[:lawyer][:location]}' and service_name='#{params[:lawyer][:service]}' order by average_rating desc")
			@lawyers =[]
			@services.each do |s|
				h = {}
				t = Lawyer.find_by_lawyer_code(s.lawyer_code)
				h[:name] = t.lawyer_name
				h[:experience] = t.years_of_experience
				h[:charge] = s.charges
				h[:rating] = t.average_rating

				@lawyers.push(h)
 			end

		end
	end


end
