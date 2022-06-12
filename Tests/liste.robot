*** Variables ***
@{NOMS}  JOHN ERIC EMELIE FRANK
@{NOMS2}  @{NOMS} Richard
@{RIEN}
@{Multiliste}   un       deux    trois
...             quatre   cinq    six

*** Test Cases ***
 constante
    Log  robot secret

list


    Log   @{NOMS}
    Log   @{NOMS2}


Elements precis de la liste
    Log   1 s'ecrit ${Multiliste}[0]
    Log   5 s'ecrit ${Multiliste}[4]

Indices Negatifs
    Log   ${Multiliste}[-1]

Slice
    Log  ${Multiliste}[0:3]
    Log  ${Multiliste}[0:6:2]