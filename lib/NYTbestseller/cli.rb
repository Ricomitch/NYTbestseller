class NYTbestseller::CLI
  
  #start should greet user, maybe give desc 
  #get data from API 
  #create new custom objs
  #all inside start method 
  
  def start
    NYTbestseller::API.new.fetch_api
    
    greeting
    bestseller_list
    menu
  end
  
  
  def greeting
    puts "==================Greetings welcome to the New York times Bestsellers list!=================="
  end
  
  
  def bestseller_list
    puts "==================Here's the current New York Times Audio Nonfiction Bestsellers:=================="
  end
  
  def book_info
  end
  
  
   
      
      
  
  #deal with inputs (loop to keep asking to make a new book selection)
  #display a list of books
  #get user input 
  #condition to check input for good value 
  #else tell them try again
  
  #exit command 
  #if input == "exit"
  #say goodbye and kill program
  
  def quit 
    puts "goodbye, until next time!"
  end  
  
end  