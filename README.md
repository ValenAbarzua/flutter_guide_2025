# App de Películas – Flutter

Aplicación desarrollada en Flutter para la materia Laboratorio de Computacion IV.  
Permite visualizar un listado de películas, ver su detalle, agregar nuevas películas mediante un formulario, y acceder a pantallas como Configuración y Acerca de la App.

---

## Funcionalidades de la App

### Listado de Películas
- Muestra todas las películas cargadas en la app.
- Cada pelicula contiene:
  - Imagen
  - Titulo
  - Genero
- Al tocar una película, se navega a la pantalla de **Detalle**.

---

### Detalle de Pelicula
Incluye:
- Imagen principal
- Título
- Género
- Descripción
- Popularidad 
- **AppBar con botón de volver**

---

### Formulario para agregar peliculas
La app incluye un formulario para crear nuevas peliculas con:
- `TextFormField`: titulo, genero y descripcion
- `DropdownButton`: seleccion de genero
- `Slider`: popularidad
- Carga de imagen mediante URL
- Validaciones simples

---

### Pantalla de Configuracion
Incluye opciones como:
- Activar/desactivar modo oscuro
- Activar/desactivar notificaciones 

---

### Pantalla Acerca de la App
Informacion del trabajo:
- Nombre de la app
- Alumna
- Materia
- Año
- Breve descripción de la aplicación

---

### Navegacion
La app utiliza:
- `Navigator.pushNamed`
- Rutas definidas en `main.dart`
- Menu lateral (Drawer) para acceder a Configuracion y Acerca de la App

---

## Tecnologias utilizadas
- **Flutter**
- **Dart**
- Widgets:
  - `Scaffold`
  - `AppBar`
  - `ListView`
  - `Card`
  - `SwitchListTile`
  - `TextFormField`
  - `DropdownButton`
  - `Navigator`
  - `Image.network`
- Diseño responsive con `MediaQuery`, `Column`, `Padding`, `SizedBox`

---

## Como ejecutar el proyecto

1. Clonar el repositorio o abrir la carpeta del proyecto.
2. Instalar las dependencias:
   ```bash
   flutter pub get
   flutter run


## AUTORA: VALENTINA ABARZUA
## MATERIA: LABORATORIO DE COMPUTACION IV
## 2025


