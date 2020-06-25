class ProteinBarCli::CLI 
  
  def call 
    puts "\nWelcome to Protein Bar Raitings!\n"
    get_bar_options
    list_bar_options
    get_user_selection
  end 
  
  def get_bar_options
    # to be scraped instead
    @choices = ProteinBarCli::Bar.all
  end
  
  def list_bar_options
    #list bar choices
    puts "\nPlease select one of the following protein bar options for more information:\n"
    @choices.each.with_index(1)  do |choice, index|
      puts "#{index}. #{choice.name}"
    end
  end
  
  def get_user_selection
    bar_selection = gets.strip.to_i
       show_details_for(bar_selection) if valid_input(bar_selection, @choices)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_details_for(bar_selection)
    choice = @choices[bar_selection - 1]
    ProteinBarCli::Raiting
    raitings = choice.raitings
    puts "\nHere are the raitings details for #{choice.name}:\n"
    #To implement
    # ProteinBarCli::Protein_Bar.all.each.with_index(1) do | bar |
      # puts raitings
    #end
  end
 
end 