class ProteinBarCli::Raiting
  
  attr_accessor :url, :name, :score,:key_data
  
  @@all = []
  
  
  def initialize(@url)
    @url = url 
    @raitings = []
    save
  end
  
  def save
    @@all << self
  end 
  
end