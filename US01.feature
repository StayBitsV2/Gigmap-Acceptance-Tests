Feature: US01 Filtrar conciertos por género musical
Como fan
quiero filtrar conciertos por género
para ver solo los que me interesan.

Scenario: Filtrar conciertos por género musical

Given el <fan> desea buscar conciertos según sus gustos musicales.  
And se encuentra en la vista de <lista_conciertos>.  
When haga clic en el botón “Filtrar”  
And seleccione uno o más <generos> musicales  
And haga clic en el botón “Aplicar filtros”  
Then el sistema mostrará únicamente los conciertos relacionados con los <generos> seleccionados.  

Examples:
| fan | lista_conciertos | generos |
| Ariana Lizarbe | conciertos disponibles | K-pop, Pop |

Scenario: Visualizar todos los conciertos sin filtros

Given el <fan> desea ver todos los conciertos disponibles.  
And se encuentra en la vista de <lista_conciertos>.  
When haga clic en el botón “Limpiar filtros”  
Then el sistema mostrará nuevamente todos los conciertos disponibles.  

Examples:
| fan | lista_conciertos |
| Diego Ramos | conciertos disponibles |