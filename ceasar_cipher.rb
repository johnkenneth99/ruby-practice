# https://www.theodinproject.com/lessons/ruby-caesar-cipher

def caesar_cipher(word = "", offset = 0)
  encrypted = ""
  
  word.bytes.each do | charByte |
    offset_value = charByte + offset

    if is_lowercase(charByte) && offset_value > "z".ord
     encrypted << (offset_value % "z".ord + "a".ord - 1 ).chr

    elsif is_uppercase(charByte) && offset_value > "Z".ord
     encrypted << (offset_value % "Z".ord + "A".ord - 1 ).chr

    elsif is_lowercase(offset_value) || is_uppercase(offset_value)
      encrypted << offset_value.chr

    else
      encrypted << charByte.chr
    end

  end

  encrypted
end

def is_lowercase(charByte)
    charByte >= "a".ord && charByte <= "z".ord
end

def is_uppercase(charByte )
  charByte >= "A".ord && charByte <= "Z".ord
end

puts caesar_cipher("What a string!", 5)