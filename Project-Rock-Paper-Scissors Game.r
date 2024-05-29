count <- 0

game <- function(){
  #user name
  user <- readline("What is your name: ")
  greeting <- paste("Hello", user, "Welcome to Rock-Paper-Scissors")
  print(greeting)
  
  count <- readline("Do you want to play game [1]Yes [0]No : ")
  
  wi <- 0
  los <- 0 
  dra <- 0
  
  while (count == 1) {
      
    #player_answer
      player <- readline("Choose your hand [1]Rock [2]Paper [3]Scissors: ")
      
      #player_hand
      if(player == 1){
        print(paste(user,": Rock"))
      }else if (player == 2){
            print(paste(user,": Paper"))
      }else if (player == 3){
            print(paste(user,": Scissors"))
      }
      
      #computer_answer
      comp <- sample(1:3,1)
      #computer_hand
      if(comp == 1){
        print("Computer : Rock")
        }else if (comp == 2){
                  print("Computer : Paper")
          }else if (comp == 3){
                  print("Computer : Scissors")
          }
      
      # player : Rock
      if(player == 1){
        if (comp == 1){
          print("Draw")
          dra = dra + 1
        }else if (comp == 2){
              print("Computer Win")
              los = los + 1
        }else if(comp == 3){
              print("You Win")
              wi = wi + 1
              }
      }
      #player : Paper
      else if (player == 2){
        if (comp == 1){
          print("You Win")
          wi = wi + 1
        }else if (comp == 2){
              print("Draw")
              dra = dra + 1
        }else if(comp == 3){
              print("Computer Win")
              los = los + 1
        } 
      }
      #player : scissors
      else if (player == 3){
        if (comp == 1){
          print("Computer Win")
          los = los + 1
        }else if (comp == 2){
              print("You Win")
              los = los + 1
        }else if(comp == 3){
              print("Draw")
              dra = dra + 1
        }
      } 
      count <- readline("Do you want to play game [1]Yes [0]No : ")
    
    if(count == 0){
      print(paste("Win :", wi))
      print(paste("Lose :", los))
      print(paste("Draw :", dra))
      print("Good Game, Well Played")
      
      break
    } 
      
  }
}

#start game
game()
