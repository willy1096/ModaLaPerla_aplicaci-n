class ValidacionForm{

  String validateEmail(String value) {
      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value))
        return 'Ingresa un correo valido';
      else
        return null;
  }
  String validatePassword(String value) {
      if (value.length < 5){
        return 'La contraseña debe tener más de 4 caracteres';
      }
      else{
        return null;
      }
  }
  String validateString(String value) {
      if (value.length < 2){
        return 'El campo debe de tener como minimo 2 caracteres';
      }
      else{
        return null;
      }
  }
  String validateinputIcon(String value) {
      if (value.length < 2){
        return 'El campo es obligatorio';
      }
      else{
        return null;
      }
  }

  String validateTel(String value) {
      if (value.length < 10 || value.length > 10){
        return 'Ingrese un número teléfonico valido';
      }
      else{
        return null;
      }
  }

  String validateTelfijo(String value) {
      if (value.length < 4){
        return 'Ingrese un número teléfonico valido';
      }
      else{
        return null;
      }
  }

    String validateUrl(String value) {
      Pattern pattern =
          r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value))
        return 'Ruta de dirección URL no válida';
      else
        return null;
  }

  String validatecodigo(String value) {
      if (value.length < 2){
        return 'Código no válido';
      }
      else{
        return null;
      }
  }
  String validateCampo(String value) {
      if (value.length < 1){
        return '*';
      }
      else{
        return null;
      }
  }

  
}

