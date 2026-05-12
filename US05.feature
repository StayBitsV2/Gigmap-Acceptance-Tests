Feature: US05 Ver mapa con geolocalización
    Como fan
    quiero ver un mapa con mi ubicación y los conciertos cercanos marcados
    para explorar visualmente las opciones disponibles.

Scenario: Visualizar mapa con conciertos cercanos

    Given el <fan> desea explorar conciertos cercanos.
    And se encuentra en la vista de <mapa>.
    When permita a la aplicación acceder a su ubicación
    Then el sistema mostrará el mapa con la ubicación actual del usuario y los conciertos cercanos marcados.

Examples:
| fan | mapa |
| Ariana Lizarbe | mapa de conciertos |

Scenario: Denegar acceso a la ubicación

    Given el <fan> desea explorar conciertos cercanos.
    And se encuentra en la vista de <mapa>.
    When deniegue el acceso a su ubicación
    Then el sistema mostrará un mensaje indicando que se requiere acceso a la ubicación para visualizar conciertos cercanos.

Examples:
| fan | mapa |
| Ariana Lizarbe | mapa de conciertos |