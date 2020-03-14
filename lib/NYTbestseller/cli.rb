class NYTbestseller::CLI
  
  #start should greet user, maybe give desc 
  #get data from API 
  #create new custom objs
  #all inside start method 
  
  def start
    NYTbestseller::API.new.fetch_api
  end

  def greeting
    puts "===========Greetings welcome to the New York times Bestsellers list!==========="
  end


  def bestseller_list
    puts "Here's the current New York Times Audio Nonfiction Bestsellers:"
  
    NYTbestseller::books.all.uniq.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
  end

  def book_info
    book = NYTbestseller::Books.all[input.to_i - 1]
        
        puts "\n***********************************************"
        
        puts "\nRank:"
        puts "#{book.rank}"
        puts "\nTitle:"
        puts "#{book.title}"
        puts "\nAuthor:"
        puts "#{book.author}"
        puts "\nDescription:"
        puts "#{book.description}"
        puts "\nPublisher:"
        puts "#{book.publisher}"
        puts "\nLink to amazon:"
        puts "#{book.link}\n"
  end
  
  def menu
  end
  
  def quit 
    puts "goodbye, until next time!"
  end
  
end  
  
  
  
  
