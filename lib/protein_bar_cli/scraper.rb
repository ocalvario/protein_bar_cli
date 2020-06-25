class ProteinBarCli::Scraper 
  def self.scrape_choices
    doc = Nokogiri::HTML(open("https://labdoor.com/rankings/protein-bars"))
    choices = doc.css("span.categoryListItemNameV2")
    
    choices.each do |choice|
      name = choice.text
      ProteinBarCli::Bar.new(name)
    end 
  end
  
  
  
end 

