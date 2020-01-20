def translate(string)
    i = 0
    for word in string.split(" ")
        while word.dontstart_with?('a','e','i','o','u')
            if word[i] == "q" && word[i + 1] == "u"



    if word.dontstart_with?('a','e','i','o','u')
        if word[1].dontstart_with?('a','e','i','o','u')
            word.to_s.split.insert(0,word.delete_at(word.count-1)).join
            word << "ay"
        end
    elsif word.start_with?('a','e','i','o','u')        
      word << "ay"  
    else       
      word.reverse << "ay"
    end
    puts word 
end

def translate(chain)
    final = ""
    countfinal = 0
    for word in chain.split(" ") #Pour chaque mot dans la phrase
      first = ""
      count = 0
      while ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"].include? word[count]
        #Tant que la lettre est inclue dans la liste des consonnes
        if word[count] == "q" && word[count + 1] == "u" #On gère l'exception du "qu"
          first += "qu"
          break
        end
        first += word[count]
        count += 1
      end
      word = word.tr(first, "") #On enlève toutes les premières consonnes du début
      countfinal == chain.split(" ").length - 1 ? final += word + first + "ay" : final += word + first + "ay" + " "
      #Si on est à la fin, on ne rajoute pas d'espace
      countfinal += 1
    end
    return final
  end