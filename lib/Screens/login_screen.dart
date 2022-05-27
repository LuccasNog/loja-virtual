import 'package:flutter/material.dart';
import 'package:virtualloja/Components/Input_field.dart';

// State full para se adaptar com teclado

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        //alinhando stack central
        alignment: Alignment.center,

        children: [
          Container(),
          SingleChildScrollView(
            //Single porque abrimos o teclado vai cobrar um teclado e cobrir a tela
            child: Container(
              //Adicionando margin
              margin: EdgeInsets.all(16),
              child: Column(
                //deixando no eixo horizontal
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.store_mall_directory,
                    color: Colors.pinkAccent,
                    size: 16,
                  ),
                  InputFields(icon: Icons.person, hint: 'User', obscure: false),
                  InputFields(
                      icon: Icons.security, hint: 'Password', obscure: true),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onSurface: Colors.pinkAccent),
                      onPressed: () {},
                      child: Text('Open'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
