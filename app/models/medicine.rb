class Medicine < ActiveRecord::Base
	has_and_belongs_to_many :prescriptions
end
