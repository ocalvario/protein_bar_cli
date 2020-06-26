class ProteinBarCli::Link
  
  attr_accessor :url, :detail, :name, :score
  
  @@all = []
  
  
  def initialize(url)
    @url = "https://labdoor.com#{url}"
    @detail = []
    @name = []
    @score = []
    get_details
    get_name
    get_score
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
  
  def get_score
    ProteinBarCli::Scraper.scrape_score(self) if @score.empty?
  end
  
  def save
    @@all << self
  end 
  
end