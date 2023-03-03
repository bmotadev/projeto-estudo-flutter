import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

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

class HomePageWidget extends StatelessWidget {
  const HomePageWidget(
      {super.key}); // key é basicamente um identificador na arvore do widget. É opcional.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // barra no topo da tela
        title: const Text('data'),
      ),
      body: const Center(
        child: Text('Bruno Mota'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // quando clicar nesse botão, vai chamar a função anonima abaixo. Uma função anonima pode ser passada como propriedade.
        onPressed: () {
          print('Clicou');
        },
      ),
    );
    // ao utilizar o StalessWidget, ele pede para implementar o metodo build. Basta retornar qualquer widget dentro dele.
  }
}
