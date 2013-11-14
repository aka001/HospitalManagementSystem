class Doctor < ActiveRecord::Base
  has_and_belongs_to_many :users
  def self.search(search,attribute)
    if search
      x='%'+search+'%'
      if attribute == 'name'
        return Doctor.where(['name LIKE ?', x])
      elsif attribute == 'qualification'
        return find(:all, :conditions => ['qualification LIKE ?', x])
      elsif attribute == 'education'
        return find(:all, :conditions => ['education LIKE ?', x])
      elsif attribute == 'specialised_fields'
        return find(:all, :conditions => ['specialised_fields LIKE ?', x])
      elsif attribute == 'salary'
        return find(:all, :conditions => ['salary LIKE ?', x])
      end
    else
        return scooped
    end  
  end
end
