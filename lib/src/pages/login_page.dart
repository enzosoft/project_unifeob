import 'package:appfluxolivre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/login.png'
              ),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox( 
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage(
                    'assets/images/et.png'
                    )
                    ),
              ),
              const SizedBox(height: 30),
              InputLoginWidget(
                icon: Icons.person_2_outlined, 
                hint: 'Usuário', 
                obscure: false
                ),
              InputLoginWidget(
                icon: Icons.lock_outline, 
                hint: 'Password', 
                obscure: true
                ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0Xffafae24),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text(
                  'Acessar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                  )
                ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/createuser');
                },
                child: const Text(
                  'Criar Conta',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}