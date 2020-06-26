class ProteinBarCli::Scraper 
  def self.scrape_choices
    doc = Nokogiri::HTML(open("https://labdoor.com/rankings/protein-bars"))
    choices = doc.css("span.categoryListItemNameV2")
    
      choices.each do |choice|
        name = choice.text
      ProteinBarCli::Bar.new(name)
    end 
  end
  
  def self.scrape_links
    doc = Nokogiri::HTML(open("https://labdoor.com/rankings/protein-bars"))
    hrefs = doc.css("a.categoryListItemSeeMore").map {|anchor| anchor["href"]}
    
    hrefs.each do |href|
      url = href
     ProteinBarCli::Link.new(url) 
    end
  end
end 

