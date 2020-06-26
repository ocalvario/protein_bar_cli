class ProteinBarCli::Link
  
  attr_accessor :url
  
  @@all = []
  
  
  def initialize(url)
    @url = url
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end 
  
end