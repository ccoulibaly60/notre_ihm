*** Test Cases ***
Premier exemple
    ${dico} =  Create Dictionary   username=john  mdp=doe
    IF  '${dico}[username]' == 'john'
        Log  Nom d'utilisateur correct
        Log  Bienvenue
    END

Deuxieme exemple
  [Tags]  faux
   ${dico2} =  Create Dictionary  username=richard  mdp=doe
    IF  '${dico2}[username]' == 'john'
        Log  Nom d'utilisateur correct
        Log  Bienvenue
    END

Troisieme exemple
  [Tags]  double
   ${dico3} =  Create Dictionary  username=john  mdp=doe
    IF  '${dico3}[username]' == 'john'
        Log  Nom d'utilisateur correct
        Log  Bienvenue
    ELSE
        Log  Intrus
    END

Quatrieme exemple
  [Tags]  triple
  ${prix} =  Set Variable  14
  IF  ${prix} < 15
       Log  inferieur
  ELSE IF  ${prix} == 15
        Log  égale
  ELSE IF  ${prix} > 15
        Log  supérieur
  ELSE
        Log  format non reconnu
  END
