# Anagramas

# Sabes que es un anagrama? un Anagrama es una palabra o frase que resulta de la transposición de
#  letras de otra palabra o frase.

# Ej: AMOR, ROMA, OMAR, MORA, RAMO, ARMO y MARO

# Objetivos Académicos
# Definición de métodos, argumentos y valor devuelto
# Utilizar métodos de Ruby para strings y arrays
# Aprender a separar responsabilidades y a no repetir código
# Actividades
# Preguntate, cómo es que sabes tu si una palabra es un anagrama de otra y que proceso mental
#  o físico seguiste para resolverlo. Escribe este proceso en pseudocódigo.

# Una vez que tengas el seudocódigo escribe un método llamado are_anagrams? que reciba dos 
# palabras, sin importar si existen en un diccionario, y devuelva true o false.

# Existe un principio que explica que cada método o clase que escribes debe solamente tener una
#  responsabilidad.Puede ser que encuentres dentro de tú método un proceso que podría ser un método
#   independiente ya que otros métodos podrían hacer uso de el.

# A esto se le llama Single responsibility principle, y es un principio más amplio pero servirá 
# en este ejercicio para empezar a comprenderlo. Esto también ayuda con el concepto DRY.

# Intenta escribir un método llamado canonical que reciba una palabra y la regrese en un formato 
# especifico el cual, si comparas dos anagramas después de mandados a este método sean iguales.
#  No sabes que es canonical visita esta página Forma Canónica
############################################################################################################
def canonical(word)
  word.upcase.chars.sort
end

def are_anagrams?(word1, word2)
    canonical(word1) == canonical(word2)
end

def anagrams_for(word,array)
  arr =[]
  array.each{ |i| arr << i if canonical(i) == canonical(word) }
  arr 
end

def anagrams_for_part_2(word,array)
  array.select{ |i| i if canonical(i) == canonical(word) }
end 

# Driver Code
p are_anagrams?("RoMa", "AmoR") == true
array = ["oMaR","Mroa","RomAi","AmoRe","RaMo"]
p anagrams_for("ROam",array) == ["oMaR","Mroa","RaMo"]
p anagrams_for("ROam",array) 
p anagrams_for_part_2("Maro",array) == ["oMaR","Mroa","RaMo"]