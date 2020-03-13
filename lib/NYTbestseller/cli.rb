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
  
  def menu
  end
  
  def quit 
    puts "goodbye, until next time!"
  end
  
end  
  
  
  
  
