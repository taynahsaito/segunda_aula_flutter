
import 'package:flutter/material.dart';

main(){
  runApp(const App(
    key: Key("key_do_app"), titulo: 'app flutter',
  ));
}

class App extends StatelessWidget{
  //named parametros
  final String titulo;
  const App({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minha appBar"),
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Column( //row(em linha), column(em coluna), listview(scroll na tela)
          mainAxisAlignment: MainAxisAlignment.
          center,
          children: [
            const Text("texto 1"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Text("texto 2");
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text("Meu primeiro botão",
              style: TextStyle(
                fontSize: 22,               
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}