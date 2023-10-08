@Smoke
Feature: Registration-Sign-in failed


Background:
Given ingreso a la pagina de automationtesting

@RegistroFallido
Scenario Outline: Registro fallido por <falla>
  When hago clic en el menú Mi Cuenta
  And ingresa una dirección de correo electrónico <correo> en el campo de dirección de correo electrónico
  When ingresa una contraseña <contrasenia> vacía en el campo de contraseña
  And hacer click en el botón Registrarse
  Then el registro debería fallar con un mensaje <resultado>

@ContraseniaVacia
  Examples:
    | correo                     | contrasenia | resultado                        | falla             |
    | mita_cervantes@hotmail.com |             | Ingrese una contraseña de cuenta | contrasenia vacia |

@CorreoInvalido
  Examples:
    | correo    | contrasenia | resultado                  | falla           |
    | mm@ll.com | Cmita2021#  | Nombre de usuario invalido | correo invalido|

@CorreoVacio
  Examples:
    | correo | contrasenia | resultado                                   | falla        |
    |        | Cmita2021#  | Ingrese una dirección de correo electrónico | correo vacio |



