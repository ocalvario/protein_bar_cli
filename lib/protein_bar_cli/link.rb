class ProteinBarCli::Link
  
  attr_accessor :url, :detail, :name
  
  @@all = []
  
  
  def initialize(url)
    @url = "https://labdoor.com#{url}"
    @detail = []
    @name = []
    get_details
    get_name
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def get_details
    ProteinBarCli::Scraper.scrape_detail(self) if @detail.empty?
  end
  
  def get_name
    ProteinBarCli::Scraper.scrape_name(self) if @name.empty?
  end
  
  def save
    @@all << self
  end 
  
end