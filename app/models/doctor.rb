class Doctor < ActiveRecord::Base
  has_and_belongs_to_many :users
  def self.search(search)
    x='%'+search+'%'
  end
end
