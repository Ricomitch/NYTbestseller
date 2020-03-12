class NYTbestseller::API 
  
  def fetch_api
    key = "uKB773QWY7gamOVHTTxzXAROjA1YvQAC"
    url = "https://api.nytimes.com/svc/books/v3/lists/{date}/{list}.json?api-key=#{key}"
    
    
    response = HTTParty.get(url)
    response["results"]["books"].each do |book|
    
    binding.pry  
      
  end  
  end
end  