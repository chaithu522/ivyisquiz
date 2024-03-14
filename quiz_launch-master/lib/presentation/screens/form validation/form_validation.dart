class Validation1
{


  static String? nameValidation(String? text)
   {
     if((text ?? '').isEmpty == true)
       {

         return 'please enter your email';
       }
     else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch((text ?? ''))) {
       return 'Please enter a valid email address';
     }
      else
        {

          return null;
        }}
        }

class Validation2 {
  static String? otpValidation(String? text) {
    if (text == null || text.isEmpty) {
      return 'Please enter your OTP';
    } else if (text.length == 5 || int.tryParse(text) == null) {
      return 'OTP must be a 5-digit number';
    }
    return null;
  }}

  class Validation3 {
  static String? passwordValidation(String? text) {
    if (text == null || text.isEmpty) {
      return 'Please enter your password';
    } else if (text.length < 5) {
      return 'Password must be at least 5 characters long';
    }
    return null;
  }
}



