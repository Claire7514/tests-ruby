def translate(string)
    final = ""
    countfinal = 0
    for word in string.split(" ") 
      first = ""
      i = 0
      while ! ['a','e','i','o','u'].include? word[i] 
        if word[i] == "q" && word[i + 1] == "u"
          first << "qu"
          break
        end
        first << word[i]
        i += 1
      end
      word = word.tr(first, "")
      countfinal == string.split(" ").length - 1 ? 
        final << word + first + "ay" : final << word + first + "ay" + " "
      countfinal += 1
    end
    return final
  end