class User < ActiveRecord::Base
	has_many :proyects


	has_secure_password
end
