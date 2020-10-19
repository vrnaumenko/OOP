print.auto <- function(wrkr){
  cat(wrkr$name, "\n")
  cat("Водитель говорит", wrkr$txt1, "\n")
  cat("Бибикалка работает", wrkr$txt2, "\n")
  cat(wrkr$fuel,"\n")
}
methods("auto")
print.auto
a
Dizel <- list( name = "Машина на дизеле",
               txt1 = "I'm driving",
               txt2 = "biiip-biiip!!",
               fuel = "Едет на солярке"
)
class(Dizel) <- c("fuel", "auto")
Dizel

Gas <- list( name = "Машина на бензине",
             txt1 = "I'm driving",
             txt2 = "biiip-biiip!!",
             fuel = "Едет на бензине"
)
class(Gas) <- c("fuel", "auto")
Gas

El <- list( name = "Электрокар",
            txt1 = "I'm driving",
            txt2 = "biiip-biiip!!",
            fuel = "Едет на электричестве"
)
class(El) <- c("fuel", "auto")
El
choose <- function(){
  v1 <- readline("Какой транспорт хочешь?: ")
  if(v1 == "Машина на дизеле") print.auto(Dizel)
  if(v1 == "Машина на бензине") print.auto(Gas)
  if(v1 == "Электрокар") print.auto(El)
}
choose()