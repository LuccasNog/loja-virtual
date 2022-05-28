import 'package:flutter/material.dart';
import 'package:virtualloja/validators/login_validators.dart';

class InputFields extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;
  final Stream<String?> stream;
  final Function(String) onchanged;

  // inicializar
  InputFields(
      {required this.icon,
      required this.onchanged,
      required this.hint,
      required this.obscure,
      required this.stream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
        stream: stream,
        builder: (context, AsyncSnapshot<String?> snapshot) {
          return TextField(
            onChanged: onchanged,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white),
              //border da input vamos add cor de rosa
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 45, 43, 44))),
              contentPadding:
                  EdgeInsets.only(left: 5, right: 30, bottom: 30, top: 30),

              //errorText: snapshot.hasError ? snapshot.error : null,
            ),
            style: TextStyle(color: Colors.white),
            obscureText: obscure,
          );
        });
  }
}
