class ProteinBarCli::CLI 
  def scrape_choices
    doc = Nokogiri::HTML(open("https://labdoor.com/rankings/protein-bars"))
  end
end 

