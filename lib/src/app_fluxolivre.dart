import 'package:appfluxolivre/src/pages/cad_usuario_page.dart';
import 'package:appfluxolivre/src/pages/home_page.dart';
import 'package:appfluxolivre/src/pages/login_page.dart';
import 'package:flutter/material.dart';

class AppFluxolivre extends StatelessWidget {
  const AppFluxolivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppFluxoLivre",
      routes: {
        '/':(_)=> LoginPage(),
        '/home':(_)=> HomePage(),
        '/novousuario':(_)=> CadUsuarioPage(),
      },
    );
  }
}