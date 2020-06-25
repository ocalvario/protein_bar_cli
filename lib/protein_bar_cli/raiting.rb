class ProteinBarCli::Raiting
  
  attr_accessor :name, :score, :key_data
  @@all = []
  
  
  def initialize(name)
    @name = name
    @raitings = []
    save
  end
  
  def save
    @@all << self
  end 
  
end