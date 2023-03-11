import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //instanciado o HomeWidget. Assim tendo a criação e componentização de widgets de forma separada.
      home: HomePageWidget(),
    ); //estamos passando a instancia de outra classe diretamente para o retorno dela.
  }
}
