print.auto <- function(wrkr){
  cat(wrkr$name, "\n")
  cat("�������� �������", wrkr$txt1, "\n")
  cat("��������� ��������", wrkr$txt2, "\n")
  cat(wrkr$fuel,"\n")
}
methods("auto")
print.auto
a
Dizel <- list( name = "������ �� ������",
               txt1 = "I'm driving",
               txt2 = "biiip-biiip!!",
               fuel = "���� �� �������"
)
class(Dizel) <- c("fuel", "auto")
Dizel

Gas <- list( name = "������ �� �������",
             txt1 = "I'm driving",
             txt2 = "biiip-biiip!!",
             fuel = "���� �� �������"
)
class(Gas) <- c("fuel", "auto")
Gas

El <- list( name = "����������",
            txt1 = "I'm driving",
            txt2 = "biiip-biiip!!",
            fuel = "���� �� �������������"
)
class(El) <- c("fuel", "auto")
El
choose <- function(){
  v1 <- readline("����� ��������� ������?: ")
  if(v1 == "������ �� ������") print.auto(Dizel)
  if(v1 == "������ �� �������") print.auto(Gas)
  if(v1 == "����������") print.auto(El)
}
choose()