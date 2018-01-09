# Script to help understanding of S3 object-oriented programming
# in R using classes and methods
 
# Constructor functions for various classes of animal
pig <- function() structure(list(), class=c("pig", "animal"))
dog <- function() structure(list(), class=c("dog", "animal"))
cat <- function() structure(list(), class=c("cat", "animal"))

makeSound <- function(x) UseMethod("makeSound")

makeSound.animal <- function(x) {
  snd <- paste0(sound(x), "!")
  message(paste("A", class(x)[1], "named", substitute(x), "goes", snd))
}

makeSound.default <- function(x) {
  message(paste(substitute(x), "makes a sound, but I'm not sure what sound it makes without knowing what it is!"))
}

sound <- function(x) UseMethod("sound")
sound.pig <- function(x) "oink"
sound.dog <- function(x) "woof"
sound.cat <- function(x) "meow"
 
david <- pig()
larry <- dog()
jason <- cat()
terry <- 10
nick <- dog()
trevor <- "hello"
carol <- pig()
 
makeSound(david)
makeSound(larry)
makeSound(jason)
makeSound(terry)
makeSound(nick)
makeSound(trevor)
makeSound(carol)
