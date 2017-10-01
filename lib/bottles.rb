class Bottles
    def verse(number)
        case number
         when 2
            "2 bottles of beer on the wall, 2 bottles of beer.\n" +
            "Take one down and pass it around, 1 bottle of beer on the wall.\n"
         when 1
            "1 bottle of beer on the wall, 1 bottle of beer.\n" +
            "Take it down and pass it around, no more bottles of beer on the wall.\n"
         when 0
            "No more bottles of beer on the wall, no more bottles of beer.\n" +
            "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
         else
            "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
            "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
        end  
    end

    def verses(from_verse, to_verse)
        from_verse.downto(to_verse).map { |verse_number|  verse(verse_number) }.join("\n")
    end

    def song
        verses(99, 0)
    end
end