import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/foundation.dart';

import 'package:rxdart/rxdart.dart';
import 'package:virtualloja/validators/login_validators.dart';

class LoginBloc extends BlocBase with LoginValidators {
  //controlador para os campos
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //String para verificar se o botão está habilitado
  //Stream<bool> get outSubmitValid =>
  //  Observable.combineLatest2(outEmail, outPassword, (a, b) => true);

  // DECLARANDO AS STRING onde as dados saem

  Stream<String> get outEmail =>
      _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword =>
      _passwordController.stream.transform(validatePassword);

  //função do bloc
  // tudo que vir no changeEmail vai para sink.add
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  @override
  void dispose() {
    //fechar o controler
    _emailController.close();
    _passwordController.close();
  }
}
