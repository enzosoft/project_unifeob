import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  void _navegarPara(BuildContext context, String rota) {
    Navigator.pushNamed(context, rota);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF000000),
        foregroundColor: const Color(0xFFFFFFFF),
        title: const Text('Admin-FluxoLivre'),
      ),
      body: Container(
        color: const Color(0xFFFEF5FF), // Fundo claro
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildItem(
              context,
              title: 'Usuários',
              imagePath: 'assets/images/admin_usuarios.png',
              rota: '/usuarios',
            ),
            _buildItem(
              context,
              title: 'Relatório',
              imagePath: 'assets/images/admin_relatorio.png',
              rota: '/relatorio',
            ),
            _buildItem(
              context,
              title: 'Configurações',
              imagePath: 'assets/images/admin_config.png',
              rota: '/configuracoes',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context,
      {required String title,
      required String imagePath,
      required String rota}) {
    return GestureDetector(
      onTap: () => _navegarPara(context, rota),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(8),
              color: Colors.black54,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
