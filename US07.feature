Feature: US07 Buscar comunidades
    Como usuario
    quiero buscar comunidades por nombre
    para unirme a las que me interesen.

Scenario: Buscar comunidad por nombre

    Given el <usuario> desea encontrar una comunidad específica.
    And se encuentra en la vista de <lista_comunidades>.
    When ingrese el <nombre_comunidad> en la barra de búsqueda
    Then el sistema mostrará las comunidades relacionadas con el nombre ingresado.

Examples:
| usuario | lista_comunidades | nombre_comunidad |
| Ariana Lizarbe | comunidades disponibles | ENGENE |

Scenario: No encontrar resultados en la búsqueda de comunidades

    Given el <usuario> desea encontrar una comunidad específica.
    And se encuentra en la vista de <lista_comunidades>.
    When ingrese un <nombre_comunidad> inexistente en la barra de búsqueda
    Then el sistema mostrará un mensaje indicando que no se encontraron comunidades relacionadas.

Examples:
| usuario | lista_comunidades | nombre_comunidad |
| Diego Ramos | comunidades disponibles | STAY |