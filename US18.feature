Feature: US18 Ver comunidades accedidas
    Como usuario
    quiero visualizar en el apartado "Comunidades" las comunidades a las que me he unido
    para acceder fácilmente a ellas.

Scenario: Visualizar comunidades unidas

    Given el <usuario> ha ingresado a distintas comunidades.
    And se encuentra en la vista de <configuracion_usuario>.
    When haga clic en la pestaña “Comunidades”
    Then el sistema mostrará la lista de comunidades a las que el usuario se ha unido.

Examples:
| usuario | configuracion_usuario |
| Ariana Lizarbe | perfil de usuario |

Scenario: No tener comunidades unidas

    Given el <usuario> no se ha unido a ninguna comunidad.
    And se encuentra en la vista de <configuracion_usuario>.
    When haga clic en la pestaña “Comunidades”
    Then el sistema mostrará un mensaje indicando que el usuario aún no pertenece a ninguna comunidad.

Examples:
| usuario | configuracion_usuario |
| Diego Ramos | perfil de usuario |