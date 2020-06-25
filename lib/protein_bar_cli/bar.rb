class ProteinBarCli::Bar
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_choices if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end 
  
end