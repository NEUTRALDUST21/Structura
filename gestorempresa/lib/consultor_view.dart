import 'package:flutter/material.dart';

class ConsultorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultor - Structura'),
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
            _buildFunctionCard('Consultar proyectos sin asignar', Icons.pending_actions),
            _buildFunctionCard('Buscar proveedores', Icons.search),
            _buildFunctionCard('Asignar proveedor', Icons.assignment_ind),
            _buildFunctionCard('Registrar cotización', Icons.attach_money),
            _buildFunctionCard('Seguimiento de avance', Icons.timeline),
            _buildFunctionCard('Finalizar proyecto', Icons.check_circle),
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