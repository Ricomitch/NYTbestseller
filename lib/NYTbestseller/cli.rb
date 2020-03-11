class NYTbestseller::CLI
  
  #start should greet user, maybe give desc 
  #get data from API 
  #create new custom objs
  #all inside start method 
  
  def start
    puts "Hello there!"
    puts "getting data from API............. Please Wait"
    puts "creating new objs"
    display_info
  end 
  
  def display_info
    puts "please make a selection:"
    input = gets.strip.downcase
    
    if input == "books"
      puts "==================Best selling audio books=================="
      puts "List of bestsellers"
      display_info
    elsif 
      puts "Sorry wrong selection try again"
      display_info
    else 
      quit
    end 
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
    puts "goodbye"
  end  
  
end  