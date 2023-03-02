import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //instanciado o HomeWidget. Assim tendo a criação e componentização de widgets de forma separada.
      home: HomePageWidget(),
    ); //estamos passando a instancia de outra classe diretamente para o retorno dela.
  }
}

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Bruno Mota'),
      ),
    );
    // ao utilizar o StalessWidget, ele pede para implementar o metodo build. Basta retornar qualquer widget dentro dele.
  }
}
