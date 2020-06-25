class ProteinBarCli::CLI 
  
  def call 
    puts "Welcome to Protein Bar Raitings! Please select from the following protein bar options:"
    get_bar_list
    get_user_input
  end 
  
  def get_bar_list
    # to be scraped instead
    @choices = ["Cliff Bar", "Builder Bar", "MetrRX", "think Bar"]
  end
  
  def get_user_input
    #list bar choices
    @choices.each_with_index  do |choice, index|
      puts "#{index + 1}. #{choice}"
    end
  end
  
end 