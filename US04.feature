Feature: US04 Crear comunidad
    Como usuario
    quiero crear una comunidad temática
    para reunir a otros usuarios en torno a intereses compartidos.

Scenario: Crear una comunidad exitosamente

    Given el <usuario> desea crear una nueva comunidad.
    And se encuentra en la vista de <crear_comunidad>.
    When ingrese el <nombre_comunidad>
    And escriba una <descripcion>
    And seleccione una <imagen>
    And haga clic en el botón “Crear comunidad”
    Then el sistema registrará la nueva comunidad correctamente.

Examples:
| usuario | crear_comunidad | nombre_comunidad | descripcion | imagen |
| ENHYPEN | formulario de comunidad | ENGENE | ENHYPENs community | enha.jpg |

Scenario: Cancelar creación de comunidad

    Given el <usuario> desea crear una nueva comunidad.
    And se encuentra en la vista de <crear_comunidad>.
    When haga clic en el botón “Cancelar”
    Then el sistema cancelará la creación de la comunidad y regresará a la pantalla principal.

Examples:
| usuario | crear_comunidad |
| ENHYPEN | formulario de comunidad |