Feature: US02 Publicar nuevo concierto
    Como artista
    quiero crear un evento
    para promocionar mi presentación.

Scenario: Publicar un nuevo concierto exitosamente

    Given el <artista> desea crear un nuevo concierto.
    And se encuentra en la vista de <publicacion_concierto>.
    When ingrese el <nombre> del concierto
    And seleccione la <fecha>
    And seleccione el <genero_musical>
    And ingrese una <descripcion>
    And cargue una <imagen>
    And seleccione una <plataforma>
    And seleccione un <recinto>
    And ingrese la <capacidad>
    And haga clic en el botón “Crear”
    Then el sistema registrará el nuevo concierto correctamente.

Examples:
| artista | publicacion_concierto | nombre | fecha | genero_musical | descripcion | imagen | plataforma | recinto | capacidad |
| ENHYPEN | formulario de concierto | BLOOD SAGA | 08/07/2026 | K-Pop | Concierto esperado | concierto.jpg | Tickermaster | Estadio San Marcos | 25000 |

Scenario: Intentar publicar un concierto con campos incompletos

    Given el <artista> desea crear un nuevo concierto.
    And se encuentra en la vista de <publicacion_concierto>.
    When deje uno o más campos obligatorios vacíos
    And haga clic en el botón “Crear”
    Then el sistema mostrará un mensaje indicando que debe completar todos los campos requeridos.

Examples:
| artista | publicacion_concierto | nombre | fecha | genero_musical | descripcion |
| Ana Torres | formulario de concierto | Rock Night | "" | Rock | Evento musical en vivo |