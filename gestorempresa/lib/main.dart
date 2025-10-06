import 'package:flutter/material.dart';
import 'login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Structura - Gestor Empresarial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFFF57C00), // Naranja
          secondary: Color(0xFF424242), // Gris
        ),
        fontFamily: 'Roboto',
      ),
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}