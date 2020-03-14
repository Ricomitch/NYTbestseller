class NYTbestseller::Books
  attr_accessor :rank, :title, :author, :publisher, :description, :link
  @@all = []
  
  def initialize(rank,title,author,publisher,description,link)
    @rank = rank
    @title = title 
    @author = author
    @publisher = publisher
    @description = description
    @link = link
  
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
end  