class NYTbestseller::Books
  attr_accessor :rank, :title, :author, :publisher, :description
  @@all = []
  
  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
  end
  
  def self.all
    @@all
  end 
  
  def save
   @@all << self
  end  
  
end  