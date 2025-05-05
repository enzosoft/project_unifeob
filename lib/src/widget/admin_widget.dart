import 'package:flutter/material.dart';

class AdminWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final String rota;
  const AdminWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.rota,
  });

  void _navegarPara(BuildContext context, String rota) {
    Navigator.pushNamed(context, rota);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navegarPara(context, rota),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Borda arredondada
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 130, 141, 199),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
