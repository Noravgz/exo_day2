      def is_multiple_of_3_or_5?(number) 
         number % 3 == 0 || number % 5 == 0
    end


    def sum_of_3_or_5_multiples(final_number)
        final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
        
        for n in 0...final_number
           if  n % 3 == 0 || n % 5 == 0  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
            final_sum += n
           end
        end
           
        # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
        current_number = 0

        final_number.times do 

            current_number += 1 # Ajoute 1 à current_number
            puts "current_number: #{current_number}" # Affiche current_number
             
        end
    
        return final_sum # Renvoie la somme finale
    end



    def sum_of_3_or_5_multiples(final_number)
        final_sum = 0

        for current_number in 0...final_number
          if is_multiple_of_3_or_5?(current_number)
           final_sum += current_number # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
          else
            # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
            # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
          end
      
        #Ici, positionne la fin de la boucle
    end
        return final_sum #on retourne la variable qui contient la somme du tout
  end
      
      sum_of_3_or_5_multiples(11) #=> 33
      sum_of_3_or_5_multiples(10) #=> 23