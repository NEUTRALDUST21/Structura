import 'package:flutter/material.dart';
import 'promotor_view.dart';
import 'consultor_view.dart';
import 'proveedor_view.dart';
import 'administrador_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _login() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });

      String user = _userController.text.toLowerCase();
      String password = _passwordController.text;

      if (user == 'promotor' && password == 'promotor123') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PromotorView()),
        );
      } else if (user == 'consultor' && password == 'consultor123') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ConsultorView()),
        );
      } else if (user == 'proveedor' && password == 'proveedor123') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProveedorView()),
        );
      } else if (user == 'admin' && password == 'admin123') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AdministradorView()),
        );
      } else {
        _showErrorDialog();
      }
    });
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error de autenticación'),
          content: Text('Usuario o contraseña incorrectos'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424242),
      body: Center(
        child: Container(
          width: 350,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo/Header CON IMAGEN PERSONALIZADA
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    // Opción A: Si tienes imagen PNG
                    Image.asset(
                      'assets/images/logo_structura.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    
                    // O Opción B: Si prefieres usar texto estilizado
                    /*
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF57C00),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'S',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    */
                    
                    SizedBox(height: 10),
                    Text(
                      'STRUCTURA',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF424242),
                      ),
                    ),
                    Text(
                      'Gestor Empresarial',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),

              // Campo de usuario
              TextField(
                controller: _userController,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF57C00)),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Campo de contraseña
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF57C00)),
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Botón de login
              _isLoading
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF57C00)),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF57C00),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: _login,
                      child: Text(
                        'INICIAR SESIÓN',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

              SizedBox(height: 20),

              // Información de usuarios demo
              /*Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Usuarios demo:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF424242),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('promotor / promotor123'),
                    Text('consultor / consultor123'),
                    Text('proveedor / proveedor123'),
                    Text('admin / admin123'),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}