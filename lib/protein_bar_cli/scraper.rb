class ProteinBarCli::Scraper 
  
  def self.scrape_links
    doc = Nokogiri::HTML(open("https://labdoor.com/rankings/protein-bars"))
    hrefs = doc.css("a.categoryListItemSeeMore").map {|anchor| anchor["href"]}
    
    hrefs.each do |href|
      url = href
     ProteinBarCli::Bar.new(url) 
    end
  end
  
 def self.scrape_details(link)
    site = link.url
    doc = Nokogiri::HTML(open(site))
    
    title = doc.css("h1").first.text
    link.name = title

    value = doc.css("span.labdoorScoreValue").text.strip
    link.score = value

    info = doc.css("section div p").text.delete_suffix('---')
    link.detail = info
    
  end

end 

