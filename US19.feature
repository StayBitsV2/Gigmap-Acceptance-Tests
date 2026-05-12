Feature: US19 Reaccionar a publicaciones en comunidades
    Como usuario
    quiero poder reaccionar a publicaciones dentro de las comunidades
    para interactuar con otros miembros.

Scenario: Dar like a una publicación

    Given el <usuario> se encuentra dentro de una <comunidad>.
    And visualiza una <publicacion>.
    When haga clic en el botón “Like”
    Then el sistema registrará la reacción en la publicación correctamente.

Examples:
| usuario | comunidad | publicacion |
| Ariana Lizarbe | ENGENE | Nuevo comeback de ENHYPEN |

Scenario: Quitar reacción de una publicación

    Given el <usuario> ya reaccionó a una <publicacion>.
    And se encuentra dentro de una <comunidad>.
    When haga clic nuevamente en el botón “Like”
    Then el sistema eliminará la reacción registrada de la publicación.

Examples:
| usuario | comunidad | publicacion |
| Diego Ramos | Rock Lovers | Festival de rock en Lima |