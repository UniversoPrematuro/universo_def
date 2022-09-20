import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/segundo/segundo_store.dart';
import 'package:flutter/material.dart';

class SegundoPage extends StatefulWidget {
  final String title;
  const SegundoPage({Key? key, this.title = 'SegundoPage'}) : super(key: key);
  @override
  SegundoPageState createState() => SegundoPageState();
}
class SegundoPageState extends State<SegundoPage> {
  final SegundoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Crescimento"), 
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
                    Modular.to.pushNamed('/conteudo/t10');
                  }, 
                  child: const Text(
                    "Tarefa 10",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t11");}, 
                  child: const Text(
                    "Tarefa 11",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t12");}, 
                  child: const Text(
                    "Tarefa 12",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t13");}, 
                  child: const Text(
                    "Tarefa 13",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t14");}, 
                  child: const Text(
                    "Tarefa 14",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t15");}, 
                  child: const Text(
                    "Tarefa 15",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t16");}, 
                  child: const Text(
                    "Tarefa 16",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/t17');}, 
                  child: const Text(
                    "Tarefa 17 ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t18");}, 
                  child: const Text(
                    "Tarefa 18",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip10");}, 
                  child: const Text(
                    "Avaliacao de desenvolvimento",
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