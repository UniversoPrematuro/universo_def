import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/conteudo_store.dart';
import 'package:flutter/material.dart';

class ConteudoPage extends StatefulWidget {
  final String title;
  const ConteudoPage({Key? key, this.title = 'ConteudoPage'}) : super(key: key);
  @override
  ConteudoPageState createState() => ConteudoPageState();
}
class ConteudoPageState extends State<ConteudoPage> {
  final ConteudoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Desenvolvimento"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.pushReplacementNamed("/home/");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: 
            LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 254, 187, 132), Color.fromARGB(255, 255, 183, 143)])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/conteudo/primeiro");
                  }, 
                  child: const Text(
                    "0 a 3 meses",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/segundo');}, 
                  child: const Text(
                    "4 a 6 meses",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/terceiro');}, 
                  child: const Text(
                    "7 a 9 meses",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/quarto');}, 
                  child: const Text(
                    "10 a 12 meses",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                const SizedBox(height: 100)
              ],
              
              ),
          ),
        ),
      )
    );
  }
}