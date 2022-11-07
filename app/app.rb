require 'io/console'
require_relative 'cards.rb'

aux = 1

def initGame
    puts "--------------------------------------------------------------------------------------"
    puts "This is a cards game called '21'."
    puts "\nDo you want to know the rules?"
    puts "\n1 - Yes, i want to learn\n"
    puts "2 - No thanks, i already know the rules\n\n"
end

def rules
    system ("cls")
    puts "--------------------------------------------------------------------------------------"
    puts "The goal of the game is to reach 21 points with the cards you have;"
    puts "\nEach card has it's own number as the number of points."
    puts "\nFor example: if you have a diamond eight, you have 8 points (the suits doesn't matter.)"
    puts "\nThe letter cards are kind of different:"
    puts "Ace == 1 point \nQ,J and K == 10 points each\n\n"
    puts "--------------------------------------------------------------------------------------"

    puts "Press any key to continue..."
    STDIN.getch
end

def playAgain
    puts "\n\nDo you want to play again?"
    puts "1 - Yes\n2 - No"
    userReplay = gets.chomp.to_i
    return userReplay 
end

loop do
    
    continueGame = 1
    loop do

        system ("cls")
        puts "-------21 Game-------"

        initGame
        userOption = gets.chomp.to_i

        case userOption
        when 1
            rules

        when 2
            system("cls")
            puts "LET'S PLAY!!!"
            sleep 3
            system("cls")
                
            cards = Cards.new
            for i in 1..2
                value = Random.rand(1..13) 
                cards.addCard(value)
            end 
            cards.printCards

            loop do
                if(cards.checkPoints < 21)

                    puts "Do you want to continue?"
                    puts "1 - Yes\n2 - No"
                    userOption = gets.chomp.to_i
                        
                    case userOption
                    when 1
                        value = Random.rand(1..13)
                        cards.addCard(value)
                        cards.printCards
                    end           

                elsif(cards.checkPoints == 21)
                    puts "--------------------------------------------------------"
                    puts "                    YOU'VE WON!! :)                     "
                    
                    playAgain
                    
                elsif (userOption == 1 || cards.checkPoints != 2)
                        
                    puts "--------------------------------------------------------"
                    puts "                     YOU'VE LOST :(                     "
                        
                    opPA = playAgain
                    
                    if(opPA != 1)
                        continueGame == 0
                        break
                    end

                end
            end


        else
            system ("cls")
            puts "Option Invalid!"
            sleep 5
        end

    break if (continueGame == 1)
        if (aux = 1)
            puts "Thanks for playing :D"
            break
        end
    end
end