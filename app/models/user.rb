class User < ActiveRecord::Base
	has_many :a_proyects, class_name: "Proyect",
							foreign_key: "user_id",
							dependent: :destroy
    has_many :registers
    has_many :proyects, through: :registers

	has_secure_password
end
