import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget(
      {super.key}); // key é basicamente um identificador na arvore do widget. É opcional.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // barra no topo da tela
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Bruno Mota 0'),
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
