class ProteinBarCli::CLI 
  
  def call 
    puts "\nWelcome to Protein Bar Raitings!\n"
    get_bar_options
    list_bar_options
    get_user_selection
  end 
  
  def get_bar_options
    @choices = ProteinBarCli::Link.all
  end
  
  def list_bar_options
    #list bar choices
    puts "\nPlease select one of the following protein bar options for more information:\n"
    @choices.each.with_index(1)  do |choice, index|
      puts "#{index}. #{choice.detail}"
    end
  end
  
  def get_user_selection
    bar_selection = gets.strip.to_i
       show_details_for(bar_selection) if valid_input(bar_selection, @choices)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def get_detail
    @raitings = ProteinBarCli::Detail.all 
  end
  
  def show_details_for(bar_selection)
    choice = @choices[bar_selection - 1]
    #raiting = @raitings[bar_selection -1]
    puts "\nHere are the raitings details for #{choice.detail}:\n"
    #To implement
    # ProteinBarCli::Protein_Bar.all.each.with_index(1) do | bar |
      # puts raitings
    #puts "1. Labdoor Score = #{raiting.score} ... 2. Key Details: #{raiting.key_detail}"
  end
 
end 