import 'package:flutter/material.dart';

class Categoria extends StatefulWidget {
  const Categoria({super.key});

  @override
  State<Categoria> createState() => _CategoriaState();
}

class _CategoriaState extends State<Categoria> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("categoria"),
      ),
    );
  }
}
