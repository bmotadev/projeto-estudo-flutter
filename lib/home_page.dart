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
  final list = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final text = controller.text;
                    setState(() {
                      list.add(text);
                    });
                    controller.clear();
                  },
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final item = list[index];

                return ListTile(
                  title: Text(item),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
