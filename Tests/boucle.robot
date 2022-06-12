*** Variables ***
@{MA_LISTE} =  un deux trois quatre cinq six sept
*** Test Cases ***
Boucle
    FOR     ${nombre}   IN  ${MA_LISTE}
        Log  ${nombre}
        Log  Pause
    END
    Log  La boucle est finie

Boucle range
    [Tags]  two
    FOR  ${index}  IN RANGE  1  6
        Log  ${index}
        Log  Pause
    END
    Log  La boucle est finie!!!
