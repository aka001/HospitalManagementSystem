class Prescription < ActiveRecord::Base
	has_and_belongs_to_many :medicines
	has_and_belongs_to_many :diags
	accepts_nested_attributes_for :medicines, :allow_destroy => true
	accepts_nested_attributes_for :diags, :allow_destroy => true
end
