class ProteinBarCli::Bar
  @@all = []
  attr_accessor :name, :url
  
  def initialize(name, url)
    @name = name
    @url = url
    save
  end
  
  def self.all
    ProteinBarCli::Scraper.scrape_choices if @@all.empty?
    @@all
  end
  
  def raitings
    ProteinBarCli::Scraper.scrape_raitings(self) if @raitings.empty?  
    @raitings
  end
  
  def save
    @@all << self
  end 
  
end