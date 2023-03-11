import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// é separado em duas classes para respeitar o principio do SOLID
//classe que vai se autogerenciar o estado
class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // barra no topo da tela
        title: const Text('Home'),
      ),
      body: Center(
        child: Text("Bruno Mota $counter"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // quando clicar nesse botão, vai chamar a função anonima abaixo. Uma função anonima pode ser passada como propriedade.
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
