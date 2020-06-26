class ProteinBarCli::Link
  
  attr_accessor :url, :detail
  
  @@all = []
  
  
  def initialize(url)
    @url = "https://labdoor.com#{url}"
    @detail = []
    get_details
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def get_details
    ProteinBarCli::Scraper.scrape_detail(self) if @detail.empty?
  end
  
  def save
    @@all << self
  end 
  
end