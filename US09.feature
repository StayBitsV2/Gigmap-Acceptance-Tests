Feature: US09 Registrarse como artista
Como nuevo usuario
quiero registrarme como artista
para promocionar mis conciertos.

Scenario: Registro exitoso como artista

Given el <usuario> desea crear una cuenta como artista.  
And se encuentra en la vista de <registro>.  
When ingrese su <email>, <contrasena>, <username>  
And seleccione el tipo de usuario “Artista”  
And haga clic en el botón “Siguiente”  
Then el sistema registrará la cuenta de artista correctamente.  

Examples:
| usuario | registro | email | contrasena | username |
| ENHYPEN | formulario de registro | carlosvega@gmail.com | Carlos123* | carlosmusic |

Scenario: Campos incompletos en el registro

Given el <usuario> desea crear una cuenta como artista.  
And se encuentra en la vista de <registro>.  
When deje uno o más campos obligatorios vacíos  
And haga clic en el botón “Siguiente”  
Then el sistema mostrará un mensaje indicando que debe completar todos los campos requeridos.  

Examples:
| usuario | registro |
| ENHYPEN | formulario de registro |