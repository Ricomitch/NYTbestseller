class NYTbestseller::CLI
  
  
  def start
    NYTbestseller::API.new.fetch_api
    
    greeting
    bestseller_list
    menu
  end

  def greeting
    puts "===========Greetings welcome to the New York times Bestsellers list!==========="
  end


  def bestseller_list
    puts "\nHere's the current New York Times Audio Nonfiction Bestsellers" 
  
    NYTbestseller::Books.all.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} by #{book.author}"
    end
  end

  def book_info(input)
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
        
  end
  
  def menu
    input = nil 
    
    while input !="exit"
    puts "***********************************************"
      puts "\nTo choose from the best sellers list above, input a number between 1-15 to view it's details."
      puts "\nType 'back' to view the complete list again."
      puts "\nIf you want to exit, type 'exit'.\n"
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i < NYTbestseller::Books.all.size
        book_info(input)
      elsif input == "back"
        bestseller_list
      elsif input == "exit"
        quit
      else 
        puts "\nWRONG INPUT...PLEASE ENTER A NUMBER BETWEEN 1-15!!!!"
      end
    end  
  end
  
  def quit 
    puts "goodbye, until next time!"
    
    #binding.pry
  end
  
end  
  
  
  
  
