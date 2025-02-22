// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/contants.dart';
import 'package:flutter_application_1/widget/widget_cadastre_form.dart';
import 'package:flutter_application_1/widget/widget_social_google.dart';

class CadastreScreen extends StatefulWidget {
  const CadastreScreen({super.key});

  @override
  State<CadastreScreen> createState() => _cadastreState();
}

class _cadastreState extends State<CadastreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: secondaryColor,
        leading: const Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: _getBody(),
      backgroundColor: secondaryColor,
    );
  }

  Widget _getBody() {
    return SafeArea(
        child: Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Faça o cadastro para ter acesso ao aplicativo',
                style: TextStyle(color: backgroundColor)),
          ],
        ),
        const SizedBox(height: 25),
        Column(
          children: [
            Form(
                child: texForm(
              label: 'Nome',
              icon: Icons.person,
            )),
            const SizedBox(height: 15),
            texForm(label: 'Name', icon: Icons.person),
            const SizedBox(height: 15),
            texForm(label: 'Senha', icon: Icons.key_outlined),
            const SizedBox(height: 15),
            texForm(label: 'Confirmar Senha', icon: Icons.call),
            const SizedBox(height: 15),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: backgroundColor),
                  onPressed: () {},
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 18,
                      color: secondaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '-------OU-------',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                elevatedButtonSocialGoogle(
                  child: Image.network(
                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30),
                  text: 'Entre com Google',
                  color: primaryColor,
                  secundaryColor:
                      const MaterialStatePropertyAll(secondaryColor),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
