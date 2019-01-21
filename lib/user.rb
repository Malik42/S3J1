#require "pry"

class User
  attr_accessor :email
  attr_accessor :name
  @@user_count = 0
  @@user_all = []

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count += 1
    
    @@user_all << [@email]
  end

  def creat_name(name_to_save)
    @name = name_to_save
  end

  def add_email(email_to_save)
    @email = email_to_save
  end

  def add_name(name_to_save)
    @name = name_to_save
  end
  
  def read_name
    puts @name
  end

  def read_email
    puts @email
  end

  def self.count
    return @@user_count
  end

  def self.all
    return @@user_all
  end
end

#binding.pry
#puts "end of file"