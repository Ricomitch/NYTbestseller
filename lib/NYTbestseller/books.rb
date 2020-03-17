class NYTbestseller::Books
  attr_accessor :rank, :title, :author, :publisher, :description
  @@all = []
  
  def initialize(rank,title,author,publisher,description)
    @rank = rank
    @title = title 
    @author = author
    @publisher = publisher
    @description = description
  
    @@all << self
    
  end
  
  def self.all
    @@all
  end 
  
end  