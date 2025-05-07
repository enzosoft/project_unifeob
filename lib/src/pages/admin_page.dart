import 'package:app_fluxolivrep/src/widget/admin_widget.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); 
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 21,
                  ),
                ),
                const SizedBox(width: 50),
                const Text(
                  'ADMINISTRADOR',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  AdminWidget(
                    title: 'Usuários',
                    imagePath: 'assets/images/user_admin.png',
                    rota: '/users', 
                  ),
                  AdminWidget(
                    title: 'Relatórios',
                    imagePath: 'assets/images/report_admin.png',
                    rota: '', 
                  ),
                  AdminWidget(
                    title: 'Configurações',
                    imagePath: 'assets/images/config_admin.png',
                    rota: '', 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
