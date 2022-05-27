import 'dart:async';

class LoginValidators {
//bojeto que vai transformar string em alguma coisa
  // Saida <String e String> pra ser ǘalid>
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    // verificando se o e-mail é valido
    if (email.contains("@")) {
      //passando e-mail para saída
      sink.add(email);
    } else {
      sink.addError('Insira um e-mail válido');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 4) {
      sink.add(password);
    } else {
      sink.addError('Password invalid');
    }
  });
}
