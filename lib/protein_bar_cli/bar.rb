class ProteinBarCli::Bar
  
  attr_accessor :url, :name, :score, :detail
  
  @@all = []
  
  
  def initialize(url)
    @url = "https://labdoor.com#{url}"
    @name = []
    @score = []
    @detail = []
    get_name
    get_score
    get_details
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_links if @@all.empty?
    @@all
  end
  
  def get_name
    ProteinBarCli::Scraper.scrape_name(self) if @name.empty?
  end
  
  def get_score
    ProteinBarCli::Scraper.scrape_score(self) if @score.empty?
  end
  
  def get_details
    ProteinBarCli::Scraper.scrape_detail(self) if @detail.empty?
  end
  
  def save
    @@all << self
  end 
  
end