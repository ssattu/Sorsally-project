class ProductMailer < ApplicationMailer
	def query(product, user)
		@query = product
		@user = user
		# debugger    
    mail( from: ENV['SMTP_TEST_USER'],to: "satyam@devohack.com", subject: "Query Test Email")
	end
end
