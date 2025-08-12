
# Guía Rápida – Task Manager Apex

Este proyecto es una **prueba técnica en Flutter**: un gestor de tareas que utiliza **Clean Architecture**, **Riverpod**, **GetIt**, **Hive**, **REST/GraphQL** y **SharedPreferences**.

---

## 📌 ¿Qué se hizo?

- **Arquitectura limpia** con separación en capas (`data`, `domain`, `presentation`).
- **Inyección de dependencias** con GetIt.
- **Manejo de estado** con Riverpod y `StateNotifier`.
- **Persistencia local** con Hive para datos offline.
- **Consumo de API REST y GraphQL** para sincronizar tareas.
- **Control de ejecución inicial** con SharedPreferences (para correr una acción una sola vez).
- **Generación automática de modelos** con Freezed y Json Serializable.

---

## ▶️ Pasos para correr el proyecto

1. **Abrir la carpeta del proyecto** en tu editor (VS Code, Android Studio, etc.).

2. **Instalar dependencias**
   ```bash
   flutter pub get
````

3. **Generar el código de modelos y clases**

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Configurar Hive**

   * Inicializar Hive en el `main.dart` con:

     ```dart
     await Hive.initFlutter();
     ```
   * Registrar los adaptadores antes de usar los modelos.

5. **Ejecutar la aplicación**

   ```bash
   flutter run
   ```

---

## 📦 Tecnologías clave

* Flutter SDK `>=3.8.1`
* Riverpod para manejo de estado
* GetIt para inyección de dependencias
* Dio para consumo de API REST
* Hive para persistencia local
* SharedPreferences para almacenamiento de configuraciones simples
* Freezed y Json Serializable para modelos y serialización

---

## 💡 Notas

* La sincronización remota se ejecuta **solo la primera vez** gracias a un flag en `SharedPreferences`.
* El proyecto está preparado para ser escalable y fácil de mantener siguiendo principios de Clean Architecture.

