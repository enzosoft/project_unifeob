import 'package:appfluxolivre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class CadUsuarioPage extends StatefulWidget {
  const CadUsuarioPage({super.key});

  @override
  State<CadUsuarioPage> createState() => _CadUsuarioPageState();
}

class _CadUsuarioPageState extends State<CadUsuarioPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();

  void _cadastrar(){
    if (_formKey.currentState!.validate()){
      Navigator.of(context).pushNamed('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/login.png'
              ),
            fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: const Color(0xff3c3e40),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        alignment: Alignment.center,
                        child: const Text(
                          'Novo Usuário',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF)
                          ),
                          ),
                      ),
                      const Text(
                        'Preencha os Dados',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InputLoginWidget(
                        controller: _nomeController,
                        icon: Icons.person_outline, 
                        hint: 'Nome', 
                        validator: Validatorless.required(
                          'Campo Obrigatório'
                          ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0Xffafae24),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: _cadastrar,
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                  )
                ),
                    ],
                  ),
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}