import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget(
      {super.key}); // key é basicamente um identificador na arvore do widget. É opcional.

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    final size = MediaQuery.of(context);
    final navigation = Navigator.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        // barra no topo da tela
        title: const Text('Home'),
      ),
      body: Center(
        child: Text("Bruno Mota ${controller.value}"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // quando clicar nesse botão, vai chamar a função anonima abaixo. Uma função anonima pode ser passada como propriedade.
        onPressed: () {
          controller.increment();
        },
      ),
    );
    // ao utilizar o StalessWidget, ele pede para implementar o metodo build. Basta retornar qualquer widget dentro dele.
  }
}
//assinar e fazer o gerenciamento de estado deste widget