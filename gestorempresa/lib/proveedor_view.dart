import 'package:flutter/material.dart';

class ProveedorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proveedor - Structura'),
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
            _buildFunctionCard('Ver proyectos asignados', Icons.assignment),
            _buildFunctionCard('Registrar cotización', Icons.monetization_on),
            _buildFunctionCard('Actualizar actividades', Icons.update),
            _buildFunctionCard('Subir archivos por fase', Icons.cloud_upload),
            _buildFunctionCard('Notificar días justificados', Icons.notifications),
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