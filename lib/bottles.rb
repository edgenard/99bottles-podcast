class Bottles
    def verse(number)
        first_line = "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n"

        case number
         when 0
           first_line +
            "Go to the store and buy some more, #{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
         else
           first_line +
            "Take #{pronoun(number)} down and pass it around, #{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
        end  
    end

    def quantity(number)
        return 'no more' if number == 0
        return 99.to_s if number == -1
        number.to_s
    end

    def container(number)
        return 'bottle' if number == 1
        'bottles'
    end

    def pronoun(number  = :DEFAULT)
        return 'it' if number == 1
        'one'
    end

    def verses(from_verse, to_verse)
        from_verse.downto(to_verse).map { |verse_number|  verse(verse_number) }.join("\n")
    end

    def song
        verses(99, 0)
    end
end

# Find the things that are most alike
# Find the smallest difference between them
# Make the smallest change that will remove that difference