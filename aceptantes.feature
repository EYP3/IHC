#######################################
Feature: US01 – Registro en la plataforma
Como usuario nuevo,
Quiero registrarme en la plataforma "TuTrade",
Para poder intercambiar artículos y productos con otros miembros.
Scenario: E1: Registrarse en la plataforma
    Given que el visitante está en la página de inicio de "TuTrade"
    When el visitante selecciona la opción "Registrarse"
    And ingresa su información de <Nombre> <Apellido> <Correo electrónico> <Contraseña>
    And hace clic en el botón de "Crear cuenta"
    Then se crea una nueva cuenta de usuario
    And el usuario recibe un correo electrónico de confirmación
    And el usuario es redirigido a la pantalla principal de la plataforma   
#######################################
Feature: US04 – Proponer un trueque
Como usuario registrado,
Quiero proponer un trueque a otro miembro,
Para intercambiar mi artículo por el suyo.
Scenario: E1: Proponer un trueque a otro miembro
    Given que el usuario registrado se encuentra en el perfil de otro miembro
    And ve un artículo que le interesa para un trueque
    When selecciona la opción "Proponer Trueque"
    And selecciona uno de sus artículos disponibles para el intercambio
    And envía la propuesta de trueque
    Then la propuesta de trueque es enviada al otro miembro
    And el otro miembro recibe una notificación de una nueva propuesta de trueque
#######################################
Feature: US05 – Aceptar un trueque
Como usuario registrado,
Quiero aceptar una propuesta de trueque,
Para concretar el intercambio de artículos.
Scenario: E1: Aceptar una propuesta de trueque
    Given que el usuario registrado ha recibido una propuesta de trueque
    When el usuario revisa los detalles de la propuesta
    And decide que quiere aceptar el trueque
    And hace clic en el botón "Aceptar Trueque"
    Then el sistema registra la aceptación del trueque
    And ambos usuarios reciben una confirmación del trueque aceptado
#######################################
Feature: US18 – Verificar mi perfil
Como usuario registrado,
Quiero verificar mi perfil proporcionando documentos o información adicional,
Para aumentar mi credibilidad y confianza en la comunidad.
Scenario: E1: Verificar el perfil del usuario
    Given que el usuario registrado se encuentra en la sección "Mi Perfil"
    When selecciona la opción "Verificar Perfil"
    And carga los documentos necesarios <Documento de identidad> <Comprobante de domicilio>
    And completa la información adicional requerida
    And envía la solicitud de verificación
    Then la solicitud es recibida por el sistema
    And el usuario recibe una notificación informando que su solicitud de verificación está en proceso
#######################################

