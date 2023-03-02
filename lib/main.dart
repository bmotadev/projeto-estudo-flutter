import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Bruno Mota',
        textDirection: TextDirection.rtl,
      ),
    ); //estamos passando a instancia de outra classe diretamente para o retorno dela.
  }
}
