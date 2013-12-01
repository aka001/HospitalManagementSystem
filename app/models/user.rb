class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :doctors
  has_and_belongs_to_many :assistants
  has_and_belongs_to_many :patients
  #validates :new_password, confirmation:true
  def self.make_salt(username="")
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end
  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
  end
  def self.authenticate(username="", password="")
    x=username
    userit=User.where(username: x)
    if userit.empty?
      return false
    else
      userit=userit.first
      if hash_with_salt(password,'salt')==userit.password
        return true
      else
        return false
      end
    end
  end
  def self.status(stat)
    if stat=="pending"
      return "pending"
    elsif stat=="confirm"
      return "confirmed"
    elsif stat=='cancel'
      return "cancelled"
    elsif stat=='served'
      return "served"
    end
  end
end