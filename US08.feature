Feature: US08 Iniciar sesión en la app mobile
    Como usuario registrado
    quiero iniciar sesión desde la aplicación móvil
    para acceder a mi cuenta.

Scenario: Iniciar sesión correctamente

    Given el <usuario> desea acceder a su cuenta.
    And se encuentra en la vista de <inicio_sesion>.
    When ingrese su <username> y <contrasena>
    And haga clic en el botón “Iniciar sesión”
    Then el sistema permitirá el acceso a la cuenta correctamente.

Examples:
| usuario | inicio_sesion | username | contrasena |
| Ariana Lizarbe | login mobile | arializarbe | Ariana123* |

Scenario: Ingresar credenciales incorrectas

    Given el <usuario> desea acceder a su cuenta.
    And se encuentra en la vista de <inicio_sesion>.
    When ingrese un <username> o <contrasena> incorrectos
    And haga clic en el botón “Iniciar sesión”
    Then el sistema mostrará un mensaje indicando que las credenciales son inválidas.

Examples:
| usuario | inicio_sesion | username | contrasena |
| Diego Ramos | login mobile | diegoramos | 123456 |