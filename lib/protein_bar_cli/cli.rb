class ProteinBarCli::CLI 
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    puts "\n#{@@grn}Welcome to Protein Bar Raitings!#{@@white}\n"
    @input = ""
    until @input == "exit"
      get_bar_options
      list_bar_options
      get_user_selection
      what_next
    end
    goodbye
  end 
  
  def get_bar_options
    @choices = ProteinBarCli::Link.all.sort_by(&:name)
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
  
  def get_detail
    @raitings = ProteinBarCli::Detail.all 
  end
  
  def show_details_for(bar_selection)
    choice = @choices[bar_selection - 1]
    puts "\nHere are the raitings details for #{choice.name}:\n"
    puts "\n1. Labdoor Score = #{@@mag}#{choice.score}#{@@white}\n
          \n2. Key Details: #{choice.detail}\n"
  end
  
  def what_next
    puts "\nAre you done? Type #{@@mag}'exit'#{@@white} to exit or hit any key to see more events.\n"
    @input = gets.strip
  end 
  
  def goodbye
    puts "\n#{@@grn}Happy snacking!#{@@white}\n"
  end
end 