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
  
  
end