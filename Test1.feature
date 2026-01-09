# language: es
Característica: Login de usuario
  Como usuario del sistema
  Quiero poder iniciar sesión
  Para acceder a mi cuenta

  Escenario: Login exitoso con credenciales válidas
    Dado que el usuario está en la página de login
    Cuando el usuario ingresa el nombre de usuario "usuario_test"
    Y el usuario ingresa la contraseña "password123"
    Y el usuario hace clic en el botón de login
    Entonces el usuario debería ver el mensaje "Bienvenido"
    Y el usuario debería estar en la página principal

  Escenario: Login fallido con credenciales inválidas
    Dado que el usuario está en la página de login
    Cuando el usuario ingresa el nombre de usuario "usuario_invalido"
    Y el usuario ingresa la contraseña "password_incorrecto"
    Y el usuario hace clic en el botón de login
    Entonces el usuario debería ver el mensaje de error "Credenciales inválidas"
    Y el usuario debería permanecer en la página de login
