import 'package:appfluxolivre/src/widget/input_create_user_widget.dart';
import 'package:flutter/material.dart';

class CreateUserPage extends StatelessWidget {
  const CreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 200,
                height: 200,
                child: Image(
                    image: AssetImage(
                  'assets/images/et.png',
                )),
              ),
              const SizedBox(height: 30),
              Text(
                'Cadastrar Conta',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              InputCreateUserWidget(
                  hint: 'Nome', icon: Icons.person_outline, obscure: false),
              InputCreateUserWidget(
                  hint: 'E-mail', icon: Icons.email_outlined, obscure: false),
              InputCreateUserWidget(
                  hint: 'CPF', icon: Icons.card_membership_outlined, obscure: false),
              InputCreateUserWidget(
                  hint: 'Senha', icon: Icons.password_outlined, obscure: true),
              InputCreateUserWidget(
                  hint: 'Confirmar Senha',
                  icon: Icons.password_outlined,
                  obscure: true),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0Xffafae24),
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF031C5F),
                    ),
                  )),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'Cancelar',
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
