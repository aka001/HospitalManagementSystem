class Prescription < ActiveRecord::Base
	has_many :medicines
	has_many :diagnostics
	accepts_nested_attributes_for :medicines, :allow_destroy => true
	accepts_nested_attributes_for :diagnostics, :allow_destroy => true
end
