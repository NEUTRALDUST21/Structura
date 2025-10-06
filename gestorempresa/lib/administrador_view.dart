import 'package:flutter/material.dart';

class AdministradorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrador - Structura'),
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
            _buildFunctionCard('Gestionar usuarios', Icons.people),
            _buildFunctionCard('Consultar todos los proyectos', Icons.dashboard),
            _buildFunctionCard('Generar reportes', Icons.analytics),
            _buildFunctionCard('Gestionar proveedores', Icons.business_center),
            _buildFunctionCard('Métricas de eficiencia', Icons.leaderboard),
            _buildFunctionCard('Aprobar días justificados', Icons.approval),
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