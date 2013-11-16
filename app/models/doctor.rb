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
        return scoped
    end  
  end
  def self.advanced_search(name, spec, city)
    print "location pin-pointed"
    puts name==nil
    puts
    print spec
    print city
    if name.nil? && spec.nil? && city.nil?
      print "here"
      return scoped
    elsif name=='nil'
      if spec=='nil'
        x='%'+city+'%'
        return Doctor.where(['country LIKE ?', x])
      elsif city=='nil'
         x='%'+spec+'%'
         return Doctor.where(['specialised_fields LIKE ?'], x)
      else
        return where('country LIKE :cityit and specialised_fields LIKE :specit', cityit:"%#{spec}%", specit:"%#{spec}%")
      end
    elsif spec=='nil'
      if name=='nil'
        x='%'+city+'%'
        return where(['country LIKE ?', x])
      elsif city=='nil'
         print "here1"
         x='%'+name+'%'
         puts x
         return where(['name LIKE ?'], x)
      else
        return where('name LIKE :nameit and country LIKE :cityit', nameit:"%#{name}%", cityit:"%#{city}%")
      end
    elsif city=='nil'
      if name=='nil'
        x='%'+spec+'%'
        return where([' LIKE ?', x])
      elsif spec=='nil'
         x='%'+name+'%'
         return where(['name LIKE ?'], x)
      else
        return where('name LIKE :nameit and specialised_fields LIKE :specit', nameit:"%#{name}%", specit:"%#{spec}%")
      end
    else
      print "i think it's here"
      return where('name LIKE :nameit and specialised_fields LIKE :specit and country LIKE :cityit', nameit:"%#{name}%", specit:"%#{spec}%", cityit:"%#{city}%")
    end
  end
end
