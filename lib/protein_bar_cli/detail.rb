class ProteinBarCli::Detail
  attr_accessor :name, :score, :key_data
  
  @@all = []
  
  def initialize (name, score, key_data)
    @name = name
    @score = score
    @key_data = key_data
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_detail if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end 
  
end