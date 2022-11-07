class Cards
    @@totalPoints = 0
    @@cards = Array.new

    def addCard(value)

        case (value)
            when 1
                @@totalPoints += value
                @@cards.push(' A')
            when 11
                @@totalPoints += 10
                @@cards.push('Q')
            when 12
                @@totalPoints += 10
                @@cards.push('J')
            when 13
                @@totalPoints += 10
                @@cards.push('K')
            else
                @@totalPoints += value
                @@cards.push(value)
        end
    end

    def checkPoints
        return @@totalPoints
    end

    def printCards

        puts "--------------------------------------------------------"
        puts "                       YOUR CARDS                       "
        @@cards.each do |value|
        
            puts "------------------"
            puts "|                |"
            puts "|                |"
            puts "|                |"
            puts "|                |"
            puts "|        #{value}       |"
            puts "|                |"
            puts "|                |"
            puts "|                |"
            puts "|                |"
            puts "|                |"
            puts "------------------"
            puts "\n"
    
        end
        
        puts "                    TOTAL POINTS: #{@@totalPoints}                    "
        puts "--------------------------------------------------------"
    end
end

