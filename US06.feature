Feature: US06 Buscar conciertos
    Como usuario
    quiero buscar conciertos por nombre o artista
    para encontrarlos fácilmente.

Scenario: Buscar concierto por nombre

    Given el <usuario> desea encontrar un concierto específico.
    And se encuentra en la vista de <lista_conciertos>.
    When ingrese el <nombre_concierto> en la barra de búsqueda
    Then el sistema mostrará los conciertos relacionados con el nombre ingresado.

Examples:
| usuario | lista_conciertos | nombre_concierto |
| Ariana Lizarbe | conciertos disponibles | Fine Line |

Scenario: No encontrar resultados en la búsqueda

    Given el <usuario> desea encontrar un concierto específico.
    And se encuentra en la vista de <lista_conciertos>.
    When ingrese un <nombre_concierto> inexistente en la barra de búsqueda
    Then el sistema mostrará un mensaje indicando que no se encontraron conciertos relacionados.

Examples:
| usuario | lista_conciertos | nombre_concierto |
| Diego Ramos | conciertos disponibles | Rock Universe 2050 |