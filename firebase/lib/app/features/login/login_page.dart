import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //final AuthService _auth = AuthService();

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _colector('E-Mail', _controllerEmail),
              _colector('Senha', _controllerSenha),
              Padding(
                padding: EdgeInsets.all(24),
                child: GestureDetector(
                  onTap: () => _function(),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        'Confirmar',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _function() {
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email != '' && senha != '') {
      //_auth.signIn(_controllerEmail.text, _controllerSenha.text);
    } else {
      print('Campos Incompletos.');
      print('test');
    }
  }

  Widget _colector(String dica, TextEditingController controller) {
    return TextFormField(
      decoration: InputDecoration(hintText: dica),
      controller: controller,
    );
  }
}
