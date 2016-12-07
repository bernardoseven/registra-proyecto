class User < ActiveRecord::Base
	has_many :proyects
    has_many :registers

	has_secure_password
end
