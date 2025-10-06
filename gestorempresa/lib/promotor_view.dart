import 'package:flutter/material.dart';

class PromotorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotor - Structura'),
        backgroundColor: Color(0xFFF57C00),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Funciones disponibles:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildFunctionCard('Registrar nuevo cliente', Icons.person_add),
            _buildFunctionCard('Crear nuevo proyecto', Icons.add_task),
            _buildFunctionCard('Consultar proyectos', Icons.list_alt),
            _buildFunctionCard('Subir documentación inicial', Icons.upload_file),
          ],
        ),
      ),
    );
  }

  Widget _buildFunctionCard(String title, IconData icon) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFFF57C00)),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Aquí irá la navegación a cada función
        },
      ),
    );
  }
}