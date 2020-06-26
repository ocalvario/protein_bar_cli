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
  
  def self.scrape_detail(link)
    site = link.url
    doc = Nokogiri::HTML(open(site))
    
    info = doc.css("section div p").text.strip
    link.detail = info
  end
  
  def self.scrape_name(link)
    site = link.url
    doc = Nokogiri::HTML(open(site))
    
    title = doc.css("h1").first.text
    link.name = title
    
  end  
  
end 

