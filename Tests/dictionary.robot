*** Test Cases ***
Dictionnaire
    ${dico} =  Create Dictionary  login=john  mdp=doe
    Log  ${dico}[mdp]
