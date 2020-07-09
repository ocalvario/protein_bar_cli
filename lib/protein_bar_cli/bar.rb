class ProteinBarCli::Bar
  
  attr_accessor :url, :name, :score, :detail
  
  @@all = []
  
  
  def initialize(url)
    @url = "https://labdoor.com#{url}"
    get_details
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def get_details
    ProteinBarCli::Scraper.scrape_details(self)
  end
  
  def save
    @@all << self
  end 
  
end