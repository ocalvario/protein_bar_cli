class ProteinBarCli::CLI 
  
  def call 
    puts "\nWelcome to Protein Bar Raitings!\n"
    get_bar_options
    list_bar_options
    get_user_selection
  end 
  
  def get_bar_options
    # to be scraped instead
    @choices = ["Cliff Bar", "Builder Bar", "MetrRX", "think Bar"]
  end
  
  def list_bar_options
    #list bar choices
    puts "\nPlease select one of the following protein bar options for more information:\n"
    @choices.each.with_index(1)  do |choice, index|
      puts "#{index}. #{choice}"
    end
  end
  
  def get_user_selection
    bar_selection = gets.strip
      if valid_input(bar_selection.to_i, @choices)
      end
  end
  
  def valid_input(input, data)
    input <= @choices.length && input > 0
  end  
  
end 