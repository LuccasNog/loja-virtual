import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';
import 'package:virtualloja/validators/login_validators.dart';

class LoginBloc extends BlocBase with LoginValidators {
  //controlador para os campos
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // DECLARANDO AS STRING onde as dados saem

  Stream<String> get outEmail =>
      _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword =>
      _passwordController.stream.transform(validatePassword);

  @override
  void dispose() {
    //fechar o controler
    _emailController.close();
    _passwordController.close();
  }
}
