class ProteinBarCli::Raiting
  
  attr_accessor :url, :name
  
  @@all = []
  
  
  def initialize(url)
    @url = url
    @name = []
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def get_name
    ProteinBarCli::Scraper.scrape_name(self) if @name.empty?
  end
  
  def save
    @@all << self
  end 
  
end