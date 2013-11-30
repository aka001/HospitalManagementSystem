class Prescription < ActiveRecord::Base
	has_and_belongs_to_many :medicines
	has_and_belongs_to_many :diagnostics
	accepts_nested_attributes_for :medicines, :allow_destroy => true
	accepts_nested_attributes_for :diagnostics, :allow_destroy => true
end
