# Responsive Loader Tooltip JS

## Introducción
Responsive Loader Tooltip JS es una herramienta JavaScript diseñada para mejorar la experiencia del usuario al interactuar con páginas web receptivas, especialmente usando DevExpress.
 ![ResponsiveLoader](https://i.imgur.com/Oh9O88X.gif)
## Características
- Actualiza dinámicamente la página según el tamaño de la ventana del navegador.
- Proporciona tooltips receptivos para mejorar la usabilidad.
- Fácil integración con proyectos ASPX utilizando ResponsiveLoader.js.

## Cómo Empezar
1. **Descargar el script `ResponsiveLoader.js`**.
2. **Instalar los snippets (opcional)**:
   - Descargue los snippets del directorio [snippets](https://github.com/JULAPALULA/AJAX-Responsive-Loader/tree/main/Snippets).
   - Para instalar los snippets en Visual Studio, utilice el atajo `Control + k + b`.
   - En la sección de Basic, añada el snippet "ResponsiveLoader.snippet" en "Mis fragmentos de código".
     ![Instalación en basic](https://i.imgur.com/AiE4h3o.png)
   - En la sección de HTML, añada el snippet "ResponsiveLoaderHTML.snippet" en "My HTML Snippets".
     ![Instalación en HTML](https://i.imgur.com/I8ztznd.png)
3. **Incluir el script ResponiveLoader.js en tu proyecto**.
4. **Añadir tus snippets a tu proyecto (ASPX y Vb)**, o bien use el ejemplo para copiar y pegar el código:
   - Cómo añadir custom snippets en VB:
     ![Snippets en VB](https://i.imgur.com/L7QPeFC.gif)
   - Cómo añadir custom snippets en HTML:
     ![Snippets en HTML](https://i.imgur.com/6aKPu3O.gif)
5. **Implementar la función `CambiarFormularios()`** del lado del servidor en el método `init` de la página de tu proyecto ASPX.
6. **Configurar tus vistas a tu gusto**:
   - `pcLimit`: tamaño en píxeles de la pantalla del usuario para reconocer que es un ordenador.
   - `tabletLimit`: tamaño en píxeles de la pantalla del usuario para reconocer que es una tablet. (-1 para desactivar)
   - `mobileLimit`: tamaño en píxeles de la pantalla del usuario para reconocer que es un móvil.
   - `resizeListenerEnabled`: al desactivarlo, no redimensiona al redimensionar la pantalla, sólo pillará el tipo de dispositivo la primera vez que carga la página.
  
     
    ![Configuración vista](https://i.imgur.com/8IW6shw.png)

## Uso
- Asegúrate de inicializar correctamente el script en tu página.
- Configura los umbrales de tamaño de ventana según las necesidades de tu proyecto.
- Implementa las funciones del lado del servidor.
- Use la función `CambiarFormularios()` en el init de la página.

## Compatibilidad
- Compatible con navegadores modernos.
- Diseñado para trabajar con proyectos ASPX utilizando ResponsiveLoader.

## Bugs
¡Se agradecen los issues que se pueda abrir! Siéntete libre de enviar problemas o solicitudes de extracción para mejorar esta herramienta.

## Licencia
Este proyecto está licenciado bajo la Licencia MIT.
